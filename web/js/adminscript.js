const body = document.querySelector("body"),
    sidebar = body.querySelector(".sidebar"),
    toogle = body.querySelector(".toogle"),
    searchBtn = body.querySelector(".search-box"),
    modeSwitch = body.querySelector(".toogle-switch"),
    modeText= body.querySelector(".mode-text");
    
toogle.addEventListener("click", () => {
    sidebar.classList.toggle("close");
});
searchBtn.addEventListener("click", () => {
    sidebar.classList.remove("close");
});

modeSwitch.addEventListener("click", () => {
    body.classList.toggle("dark");

    if(body.classList.contains("dark")){
        modeText.innerText = "Light Mode";
    } else {
        modeText.innerText = "Dark Mode";
    }
});

function openEditWindow(id) {
    document.getElementById('editWindow').style.display = 'block';
    document.getElementById('editId').value = id; // Set ID for PHP processing
    // You can fetch student details based on the ID via AJAX and populate the fields here
}

function closeEditWindow() {
    document.getElementById('editWindow').style.display = 'none';
}

// Get all delete buttons
const deleteButtons = document.querySelectorAll('.delete-btn');

// Function to confirm deletion
function confirmDeletion(event) {
    // Display a confirmation dialog
    const isConfirmed = confirm("Are you sure you want to delete this row?");
    
    // If user confirms deletion, remove the row
    if (isConfirmed) {
        const row = event.target.closest('tr'); // Find the closest table row
        if (row) {
            row.remove(); // Remove the row from the table
        }
    }
}

// Attach click event listener to each delete button
deleteButtons.forEach(button => {
    button.addEventListener('click', confirmDeletion);
});



