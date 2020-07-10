from Bio.Blast import NCBIWWW
from Bio.Blast import NCBIXML
sequence = "ACTATTCCAAACAGCTCATAACCAGAAA"
handle = NCBIWWW.qblast("blastn", "nt", sequence)
records = NCBIXML.parse(handle)
record = next(records)
count = 0
for alignment in record.alignments:
    for hsp in alignment.hsps:
        count += 1
        if count > 3:
            break
        print('\nsequence:', alignment.title)
        print('length:', alignment.length)        
        print(hsp.query[0:75] + '...')
        print(hsp.match[0:75] + '...')
        print(hsp.sbjct[0:75] + '...')