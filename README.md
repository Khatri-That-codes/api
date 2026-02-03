# F1 Radio and Dialogue API

This is an API that serves to provide  dialogue/radio responses for different F1 drivers and teams as per the user request and subject to availability of the driver/team name in the data file, if not, it gives a random generic quote. 

This was mainly developed in **Ruby**, specifically using **Ruby on Rails** and **Bash**.
It demonstrates the use of Rails controllers and modules

Deployed using: Render (URL : https://f1-radio-bda6.onrender.com )

## Prerequisites
- Ruby 3.1.2
- Rails 7.x
- SQLite3
- Bundler

##  API Usage Instructions

### Locally
Start the Rails server locally:
```bash
rails server
```
Access the API at `http://localhost:3000`.

### Remote

Access the API at `https://f1-radio-bda6.onrender.com` and use api routes


## Setup Instructions (Local)

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd api
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Run Rails Server
   ```bash
   rails s
   ```

## Routing Information
- **GET /driver**
  - Query Parameter: `driver` (e.g., `/driver/max_verstappen`)
  - Returns json with driver name and random quote.
  Example: 
  ```
  {"driver":"max_verstappen","dialogue":"Simply, simply lovely!"}
  ```

- **GET /team**
  - Query Parameter: `team` (e.g., `/team/red_bull`)
  - Returns json with team name and random team quote


### Acknowledgements
- The internet for the F1 teams and drivers' respective quotes 


#### Made with love by Jena <3
