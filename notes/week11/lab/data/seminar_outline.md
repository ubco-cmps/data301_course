## Prerequisites:

- Students have Tableau Academic License
- [Seminar Slides](https://docs.google.com/presentation/d/1rTyl5_-MAjgimppsRoRSwzDqFY7bZsA4xO-Q4H6omZw/edit?ts=5ecc2dd0#slide=id.p1)

## Seminar Outline

1. **Demo: Dummy Dash** (5 mins) [Firas]
    - What is possible in 1 month time 
    - Features 
    - Captions 
    - Filtering
    - Dashboard vs worksheets
    - Pop ups, hovers, extensions, palettes
    - URLs, images 
    
1. **Slides -> Introduction to Tableau** [5 mins] [Hayley]
    - What it is? Who uses it? Why?** (2 mins)
    - Pros and Cons** (3 mins) 
        - Pros: 
          - Super easy to use
          - Drag and drop style
          - Lot you can do easily
          - Things that would take a while on seaborn and ggplot can be done easily
          - Extensions are useful
          - It's pretty
          - Super easy to connect to ddatabases - postgres db, mysql, etc...
          - Wrangling in Tableau is possible
          - Multiple data sources

        - Cons
          - Easy stuff in visualization world take longer to do in Tableau (Violin plots)
          - "Crap for big data"
          - Problematic for "specific things" -> Tableau has rules they expect you to follow and getting around them is hacky. 
          - There are some "calculations"
          - Steep learning curves (couple hours)
          - Expensive, academic license is restrictive
          - NOT reproducible
          - (lack of) Version Control (image of folders) 
          - Crashes... a lot. 

1. **Slides -> Vocabulary** (5 mins) [Firas]
    - Dimension, measure, parameter, (continuous vs discrete),  calculation, etc.
    - Worksheets vs dashboards
    - Tableau recognizes locations, time, boolean, strings etc (different than dimensions)
    - Table JOINS!!! relationship vs join 
    - `.Twb` vs `.Twbx`

1. **Workshop - Building a dashboard from scratch** (30 mins) [Firas & Hayley]
    (need to explore this more) 
    - Bring in data (joins and combined data) 
    - Use Vancouver trees dataset 
    - Make bar chart, bubble chart, time series (forecasting option- do not love, but it's there)!
    - Map, layers 
    - Filtering 
    - Difficulties of easy things (discrete values top header vs continuous values = bottom header, horizontal radio buttons)
    - Aggregates, different symbols (can add your own!)