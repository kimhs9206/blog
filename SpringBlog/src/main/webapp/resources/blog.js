const toggleBtn = document.querySelector(".content-category-toggleBtn");
const category = document.querySelector(".content-category");

toggleBtn.addEventListener("click", () => {
  category.classList.toggle("active");
});
