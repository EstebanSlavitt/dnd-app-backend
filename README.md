# 🐉 DnD Character Randomizer Backend

Welcome to the **DnD Character Randomizer Backend**! This Ruby on Rails API powers the DnD character randomizer, helping Dungeon Masters (DMs) and players quickly generate random characters with backstories to speed up the game. This backend handles character attributes and integrates with external APIs to make gameplay faster and more fun!

---

## ⚔️ Features

- **🛠️ API for Random Character Generation**: Handles character attributes like name, class, race, and ability scores.
- **📜 Story Generation Integration**: Connects with the ChatGPT API to generate rich, random backstories for characters.
- **🔗 DnD 5e API Integration**: Utilizes the **[DnD 5e API](https://www.dnd5eapi.co/api)** to fetch random character attributes (e.g., class, race, abilities).
- **🗂️ RESTful Endpoints**: Fully structured REST API to interact with your front end or other services.
- **⚡ Fast and Scalable**: Built on **Ruby on Rails**, offering performance and scalability for larger-scale use.

---

## 🛠️ Built With

- **Ruby on Rails**: A web application framework for building the API backend.
- **PostgreSQL**: Database management system used to store data.
- **JavaScript (for front end requests)**: Powers the interaction between front end and backend.
- **External APIs**: Integrates with **ChatGPT** and **DnD 5e API** for character and backstory generation.

---

## 📚 API Documentation

Here’s how to use the API:

### **Random Character Endpoint**

- **Endpoint**: `/api/v1/characters/random`
- **Method**: `GET`
- **Response**: Returns a randomly generated DnD character with attributes like name, class, race, and abilities.

### **Backstory Generation Endpoint**

- **Endpoint**: `/api/v1/characters/:id/backstory`
- **Method**: `GET`
- **Response**: Returns a unique backstory for the specified character.

---

## 🚀 How to Run the Project

1. Clone this repository:

   ```bash
   git clone https://github.com/EstebanSlavitt/dnd-backend.git

   ```

2. Navigate to the project directory:

   ```bash
   cd dnd-app-backend
   ```

3. Install dependencies:

   ```bash
   bundle install
   ```

4. Start the development server:

   ```bash
   rails server
   ```

5. Open your browser and navigate to `http://localhost:3000` to access the DnD Character Randomizer.

---

## 📈 Future Improvements

- **Character Export Options**: Character Customization: Add endpoints for more customized character creation (e.g., specifying race or class).
- **Expanded Character Customization**: More APIs: Explore other DnD-related APIs for richer character creation.
- **Improved Storytelling**: Improve storytelling integration with more advanced AI models.

## 🚧 Challenges and Learnings

Working on this project as a junior developer helped me strengthen my skills in Ruby on Rails, API integration, and back-end development. It also gave me experience with database design and managing external API requests. This project challenged me to optimize server-side performance, ensuring the API remains fast and responsive.

## 📬 Getting in Touch

If you have any feedback or suggestions, feel free to reach out!

- **LinkedIn**: (www.linkedin.com/in/steven-slavitt-a9b09b295)
- **GitHub**: (https://github.com/EstebanSlavitt)

## 📝 License

### How this README helps:

- **Introduction**: Clearly explains the purpose of the back end.
- **Tech Stack**: Highlights your skills in **Ruby on Rails** and API development.
- **API Documentation**: Gives clear instructions on how to use the API.
- **Challenges & Learnings**: Demonstrates your growth and problem-solving abilities, which can impress hiring managers.
- **Future Improvements**: Shows you're forward-thinking and willing to expand the project.

This README will not only impress hiring managers but also showcase your technical skills in a structured and engaging way!
