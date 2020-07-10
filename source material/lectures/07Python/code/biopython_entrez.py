# Retrieve data from nucleotide database as FASTA
from Bio import Entrez
from Bio import SeqIO
Entrez.email = "test@test.com"
# Providing GI for single entry lookup
handle = Entrez.efetch(db="nucleotide", rettype="fasta", retmode="text", id="3288717")
record = SeqIO.read(handle, "fasta")
handle.close()
print(record)
