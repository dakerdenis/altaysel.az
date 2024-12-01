document.addEventListener("DOMContentLoaded", function () {
    // Global theme state
    let isDarkTheme = false;

    // Header Element
    const header = document.querySelector(".header");

    // Update header class based on scroll and theme state
    function updateHeaderClass() {
        const isScrolled = window.scrollY > 0;

        if (header) {
            header.classList.remove("header__scrolled", "header__scrolled_black");

            if (isScrolled) {
                header.classList.add(isDarkTheme ? "header__scrolled_black" : "header__scrolled");
            }
        }
    }

    // Setup header scroll handling
    function setupHeaderScroll() {
        window.addEventListener("scroll", updateHeaderClass);
        updateHeaderClass(); // Initial call on page load
    }

    // Theme changer functionality
    function setupThemeChanger() {
        const themeChanger = document.querySelector(".main__block__theme-changer");
        const themeCircle = document.querySelector(".__theme-surface__circle");
        const themeSurface = document.querySelector(".__theme-surface");
        const themeMoon = document.querySelector(".__theme-surface__moon");

        function toggleTheme() {
            isDarkTheme = !isDarkTheme;
        
            // Update theme-specific styles
            if (themeCircle) themeCircle.style.left = isDarkTheme ? "40px" : "-12px";
            if (themeSurface) themeSurface.style.backgroundColor = isDarkTheme ? "black" : "var(--orange)";
            if (themeMoon) themeMoon.style.opacity = isDarkTheme ? "0" : "1";
        
            // Update background colors for all elements with id="background_change"
            const backgroundChanges = document.querySelectorAll("#background_change");
            const backgroundChangeMain = document.getElementById("background_change_main");
        
            backgroundChanges.forEach((element) => {
                element.style.backgroundColor = isDarkTheme ? "#000" : "#fff";
            });
        
            if (backgroundChangeMain) {
                backgroundChangeMain.style.backgroundColor = isDarkTheme ? "#000" : "#fff";
            }
        
            // Update font colors for all elements with class "font_change"
            const fontChangeElements = document.querySelectorAll(".font_change");
            fontChangeElements.forEach((element) => {
                element.style.color = isDarkTheme ? "#fff" : "#000";
            });
        
            // Update image sources
            const imageMappings = [
                { id: "image_change5", darkSrc: "./style/imgs/about_3_black.jpeg", lightSrc: "./style/imgs/about_3_white.jpeg" },
                { id: "image_change4", darkSrc: "./style/imgs/about_2_black.jpeg", lightSrc: "./style/imgs/about_2_white.jpeg" },
                { id: "image_change3", darkSrc: "./style/imgs/about_1_black.jpeg", lightSrc: "./style/imgs/about_1_white.jpeg" },
            ];
        
            imageMappings.forEach(({ id, darkSrc, lightSrc }) => {
                const image = document.getElementById(id);
                if (image) {
                    image.src = isDarkTheme ? darkSrc : lightSrc;
                }
            });
        
            document.body.classList.toggle("dark-theme", isDarkTheme);
        
            // Update header immediately to reflect the theme
            updateHeaderClass();
        }
        
        
        
        

        if (themeChanger) {
            themeChanger.addEventListener("click", toggleTheme);
        }
    }

    // Preloader setup
    function setupPreloader() {
        const preloader = document.getElementById("preloader");
        const minDuration = 100;
        const startTime = performance.now();

        function hidePreloader() {
            const elapsedTime = performance.now() - startTime;
            const remainingTime = Math.max(0, minDuration - elapsedTime);

            setTimeout(() => {
                if (preloader) preloader.style.display = "none";
            }, remainingTime);
        }

        window.addEventListener("load", hidePreloader);
    }

    // Scroll-to functionality
    function setupScrollTo() {
        const buttons = document.querySelectorAll(".header__navigation__container button");
        buttons.forEach(button => {
            button.addEventListener("click", () => {
                const targetElement = document.querySelector(button.dataset.target);
                if (targetElement) {
                    window.scrollTo({
                        top: targetElement.offsetTop - 95,
                        behavior: "smooth"
                    });
                }
            });
        });
    }

    // Language dropdown toggle
    function setupLanguageDropdown() {
        const languageToggle = document.querySelector(".language__toggle");
        const languageDropdown = document.querySelector(".language__dropdown");
        const arrow = document.querySelector(".arrow");

        if (!languageToggle || !languageDropdown || !arrow) return;

        languageToggle.addEventListener("click", (event) => {
            event.stopPropagation();
            languageDropdown.classList.toggle("show");
            arrow.classList.toggle("rotate");
        });

        document.addEventListener("click", (event) => {
            if (!languageToggle.contains(event.target) && !languageDropdown.contains(event.target)) {
                languageDropdown.classList.remove("show");
                arrow.classList.remove("rotate");
            }
        });
    }

    // Number animations on scroll
    function setupNumberAnimation() {
        const numberBlocks = document.querySelectorAll(".number__block__element");

        function isInViewport(element) {
            const rect = element.getBoundingClientRect();
            return (
                rect.top >= 0 &&
                rect.left >= 0 &&
                rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
                rect.right <= (window.innerWidth || document.documentElement.clientWidth)
            );
        }

        function countNumbers(element) {
            const targetNumber = parseInt(element.querySelector("span").innerText);
            let currentNumber = 0;
            const increment = Math.ceil(targetNumber / 60);

            const interval = setInterval(() => {
                if (currentNumber < targetNumber) {
                    currentNumber += increment;
                    if (currentNumber > targetNumber) currentNumber = targetNumber;
                    element.querySelector("span").innerText = currentNumber;
                } else {
                    clearInterval(interval);
                }
            }, 20);

            element.classList.add("counted");
        }

        function handleScroll() {
            numberBlocks.forEach(block => {
                if (isInViewport(block) && !block.classList.contains("counted")) {
                    countNumbers(block);
                }
            });
        }

        handleScroll(); // Initial call
        window.addEventListener("scroll", handleScroll);
    }

    // Initialize all functionality
    setupPreloader();
    setupHeaderScroll();
    setupThemeChanger();
    setupScrollTo();
    setupLanguageDropdown();
    setupNumberAnimation();





    // Function to toggle service content
    // Function to toggle service content
    // Function to toggle service content

    // Function to toggle service content
    const serviceElements = document.querySelectorAll(
        ".services__block__element"
    );
    function toggleServiceContent(service) {
        const link = service.querySelector(".services__element__link");
        const defaultElement = service.querySelector(
            ".services__block__element-default"
        );
        const openedElement = service.querySelector(
            ".services__block__element-oppened"
        );
        defaultElement.style.display = "none";
        openedElement.style.display = "block";

        document.addEventListener("click", closeOpenedContent);

        function closeOpenedContent(event) {
            if (!service.contains(event.target)) {
                defaultElement.style.display = "block";
                openedElement.style.display = "none";
                document.removeEventListener("click", closeOpenedContent);
            }
        }
    }
    serviceElements.forEach((service) =>
        service
            .querySelector(".services__element__link")
            .addEventListener("click", (event) => {
                event.stopPropagation();
                toggleServiceContent(service);
            })
    );





    //! POPUP CODE
    //! POPUP CODE
    //! POPUP CODE
    // Function to fetch JSON data from external file
    async function fetchData(url) {
        const response = await fetch(url);
        if (!response.ok) {
            throw new Error(`Failed to fetch data from ${url}`);
        }
        return response.json();
    }

    // Load project data
    Promise.all([
        fetchData("/api/mainprojects"),
        fetchData("/api/mapprojects"),
        fetchData("/api/futureprojects"),
    ])
        .then(([mainProjectData, mapProjectData, futureProjectData]) => {
            handlePopupContainers(
                mainProjectData,
                mapProjectData,
                futureProjectData
            );
        })
        .catch((error) => {
            console.error("Error fetching project data:", error);
        });

    // Function to handle popup containers after fetching data
    function handlePopupContainers(
        mainProjectData,
        mapProjectData,
        futureProjectData
    ) {
        const popupContainers = document.querySelectorAll(
            ".projects__block-hover__popup, .map__project-view_more, .future_slide__link"
        );
        const popupImage = document.getElementById("popup_image");
        const popupName = document.getElementById("popup_name");
        const popupAdress = document.getElementById("popup__adress");
        const popupYear = document.getElementById("popup_year");
        const popupYearBlock = popupYear.parentElement; // Get the parent block containing the year
        const popupLocation = document.getElementById("popup_location");
        const popupDescription = document.getElementById("popup_description");
        const popupClose = document.getElementById("popup_close");
        const prevButton = document.getElementById("prev_button");
        const nextButton = document.getElementById("next_button");
        let currentImageIndex = 0;
        let currentData;

        popupContainers.forEach((popupContainer) => {
            popupContainer.addEventListener("click", () => {
                const projectId = popupContainer.dataset.projectId;
                let project = mainProjectData.find(
                    (project) => project.id === parseInt(projectId)
                );
                let isFutureProject = false;

                if (!project) {
                    project = mapProjectData.find(
                        (project) => project.id === parseInt(projectId)
                    );
                }

                if (!project) {
                    project = futureProjectData.find(
                        (project) => project.id === parseInt(projectId)
                    );
                    isFutureProject = !!project; // Check if the project is a future project
                }

                if (project) {
                    createPopup(project, isFutureProject);
                }
            });
        });

        function openPopup() {
            const popupOverlay = document.getElementById("popup_overlay");
            popupOverlay.style.display = "flex";
            document.body.style.overflow = "hidden";

            popupOverlay.addEventListener("click", (event) => {
                if (event.target === popupOverlay) closePopup();
            });
            popupClose.addEventListener("click", closePopup);
        }

        function closePopup() {
            const popupOverlay = document.getElementById("popup_overlay");
            popupOverlay.style.display = "none";
            document.body.style.overflow = "auto";
        }

        function updateImage() {
            if (currentData.images.length > 0) {
                const currentImageSrc = currentData.images[currentImageIndex];
                popupImage.src = `./archi/public/uploads/projects/${currentImageSrc}`;
            }
        }

        function createPopup(data, isFutureProject) {
            console.log("Opening popup for project:", data);
            // Remove previous event listeners
            prevButton.removeEventListener("click", prevButtonClickHandler);
            nextButton.removeEventListener("click", nextButtonClickHandler);

            currentData = data;
            currentImageIndex = 0;

            // Ensure images is a proper array
            let images = [];
            try {
                images = Array.isArray(data.images)
                    ? data.images
                    : JSON.parse(data.images);
                if (!Array.isArray(images)) {
                    throw new Error("Parsed images data is not an array");
                }
            } catch (e) {
                console.error("Error parsing images:", e);
                images = [];
            }

            // Add main_image to the beginning of the images array if not already present
            if (!images.includes(data.main_image)) {
                images.unshift(data.main_image);
            }
            currentData.images = images;

            if (images.length === 0) {
                popupImage.src = `./archi/public/uploads/projects/${data.main_image}`;
                prevButton.style.display = "none";
                nextButton.style.display = "none";
            } else {
                popupImage.src = `./archi/public/uploads/projects/${images[0]}`;
                prevButton.style.display = "block";
                nextButton.style.display = "block";
            }

            popupName.innerHTML = data.name_az;
            popupDescription.innerHTML = data.desc_az;
            popupAdress.innerHTML = data.adress;

            if (isFutureProject) {
                popupYearBlock.style.display = "none";
                popupLocation.innerHTML = "Ətraflı";
                socialContainer.style.display = "flex";

                // Generate a unique shareable URL with the project ID
                const shareUrl = encodeURIComponent(
                    window.location.origin + `?projectId=${data.id}`
                );
                const shareText = encodeURIComponent(`Check out this project: ${data.name_az}`);

                document.querySelector(".facebook").href = `https://www.facebook.com/sharer/sharer.php?u=${shareUrl}`;
                document.querySelector(".twitter").href = `https://twitter.com/share?url=${shareUrl}&text=${shareText}`;
                document.querySelector(".linkedin").href = `https://www.linkedin.com/shareArticle?mini=true&url=${shareUrl}&title=${shareText}`;
                document.querySelector(".whatsapp").href = `https://api.whatsapp.com/send?text=${shareText} ${shareUrl}`;
                document.querySelector(".telegram").href = `https://telegram.me/share/url?url=${shareUrl}&text=${shareText}`;
            } else {
                socialContainer.style.display = "none";
                popupYearBlock.style.display = "flex";
                popupYear.innerHTML = ` ${data.year}`;
                popupLocation.innerHTML = "Google Maps-da baxmaq";
            }

            popupLocation.href = data.location;

            prevButton.addEventListener("click", prevButtonClickHandler);
            nextButton.addEventListener("click", nextButtonClickHandler);

            openPopup();
        }

        const prevButtonClickHandler = () => {
            currentImageIndex =
                (currentImageIndex - 1 + currentData.images.length) %
                currentData.images.length;
            updateImage();
        };

        const nextButtonClickHandler = () => {
            currentImageIndex =
                (currentImageIndex + 1) % currentData.images.length;
            updateImage();
        };
    }
    function createPopup(data, isFutureProject) {
        console.log("Opening popup for project:", data);

        const popupOverlay = document.getElementById("popup_overlay");
        const popupImage = document.getElementById("popup_image");
        const popupName = document.getElementById("popup_name");
        const popupAdress = document.getElementById("popup__adress");
        const popupYear = document.getElementById("popup_year");
        const popupYearBlock = popupYear.parentElement;
        const popupLocation = document.getElementById("popup_location");
        const popupDescription = document.getElementById("popup_description");
        const prevButton = document.getElementById("prev_button");
        const nextButton = document.getElementById("next_button");
        let currentImageIndex = 0;
        let currentData = data;

        // Ensure images is a proper array
        let images = [];
        try {
            images = Array.isArray(data.images) ? data.images : JSON.parse(data.images);
            if (!Array.isArray(images)) {
                throw new Error("Parsed images data is not an array");
            }
        } catch (e) {
            console.error("Error parsing images:", e);
            images = [];
        }

        // Add main_image to the beginning of the images array if not already present
        if (!images.includes(data.main_image)) {
            images.unshift(data.main_image);
        }
        currentData.images = images;

        if (images.length === 0) {
            popupImage.src = `./archi/public/uploads/projects/${data.main_image}`;
            prevButton.style.display = "none";
            nextButton.style.display = "none";
        } else {
            popupImage.src = `./archi/public/uploads/projects/${images[0]}`;
            prevButton.style.display = "block";
            nextButton.style.display = "block";
        }

        popupName.innerHTML = data.name_az;
        popupDescription.innerHTML = data.desc_az;
        popupAdress.innerHTML = data.adress;

        if (isFutureProject) {
            popupYearBlock.style.display = "none";
            popupLocation.innerHTML = "Ətraflı";
            socialContainer.style.display = "flex";

            // Generate a unique shareable URL with the project ID
            const shareUrl = encodeURIComponent(
                window.location.origin + `?projectId=${data.id}`
            );
            const shareText = encodeURIComponent(`Check out this project: ${data.name_az}`);

            document.querySelector(".facebook").href = `https://www.facebook.com/sharer/sharer.php?u=${shareUrl}`;
            document.querySelector(".twitter").href = `https://twitter.com/share?url=${shareUrl}&text=${shareText}`;
            document.querySelector(".linkedin").href = `https://www.linkedin.com/shareArticle?mini=true&url=${shareUrl}&title=${shareText}`;
            document.querySelector(".whatsapp").href = `https://api.whatsapp.com/send?text=${shareText} ${shareUrl}`;
            document.querySelector(".telegram").href = `https://telegram.me/share/url?url=${shareUrl}&text=${shareText}`;
        } else {
            socialContainer.style.display = "none";
            popupYearBlock.style.display = "flex";
            popupYear.innerHTML = ` ${data.year}`;
            popupLocation.innerHTML = "Google Maps-da baxmaq";
        }

        popupLocation.href = data.location;

        function openPopup() {
            popupOverlay.style.display = "flex";
            document.body.style.overflow = "hidden";

            popupOverlay.addEventListener("click", (event) => {
                if (event.target === popupOverlay) closePopup();
            });
            popupClose.addEventListener("click", closePopup);
        }

        function closePopup() {
            popupOverlay.style.display = "none";
            document.body.style.overflow = "auto";
        }

        const prevButtonClickHandler = () => {
            currentImageIndex = (currentImageIndex - 1 + currentData.images.length) % currentData.images.length;
            updateImage();
        };

        const nextButtonClickHandler = () => {
            currentImageIndex = (currentImageIndex + 1) % currentData.images.length;
            updateImage();
        };

        function updateImage() {
            if (currentData.images.length > 0) {
                const currentImageSrc = currentData.images[currentImageIndex];
                popupImage.src = `./archi/public/uploads/projects/${currentImageSrc}`;
            }
        }

        prevButton.addEventListener("click", prevButtonClickHandler);
        nextButton.addEventListener("click", nextButtonClickHandler);

        openPopup();
    }

    // Remaining code continues here, including window.onload and handlePopupContainers
    window.onload = function () {
        console.log("Page loaded. Checking URL parameters...");
        const urlParams = new URLSearchParams(window.location.search);
        const projectId = urlParams.get("projectId");

        console.log("Project ID from URL:", projectId);

        if (projectId) {
            console.log("Project ID detected. Fetching project data...");

            Promise.all([
                fetchData("/api/mainprojects"),
                fetchData("/api/mapprojects"),
                fetchData("/api/futureprojects"),
            ])
                .then(([mainProjectData, mapProjectData, futureProjectData]) => {
                    const futureProject = futureProjectData.find(
                        (project) => project.id === parseInt(projectId)
                    );

                    console.log("Future project data:", futureProject);

                    if (futureProject) {
                        createPopup(futureProject, true);

                        if (history.pushState) {
                            const newUrl = window.location.origin + window.location.pathname;
                            history.pushState({}, document.title, newUrl);
                        }
                    } else {
                        console.log("Project not found with the provided ID.");
                    }
                })
                .catch((error) => {
                    console.error("Error fetching project data:", error);
                });
        } else {
            console.log("No project ID in URL.");
        }
    };




});
document.addEventListener("DOMContentLoaded", function () {
    const imagesTabButton = document.getElementById("images_tab_button");
    const videoTabButton = document.getElementById("video_tab_button");
    const imagesTab = document.getElementById("images_tab");
    const videoTab = document.getElementById("video_tab");
    const popupVideo = document.getElementById("popup_video");

    const placeholderVideoUrl = "https://www.youtube.com/embed/H_ReGaTJ92s?si=F7ZSyz1kUfDl8Sp1"; // Replace with your placeholder video UR
    function switchToImagesTab() {
        console.log("Images tab clicked");
        imagesTab.style.display = "flex";
        videoTab.style.display = "none";
        imagesTabButton.classList.add("active-tab");
        videoTabButton.classList.remove("active-tab");
    }

    function switchToVideoTab() {
        console.log("Video tab clicked");
        imagesTab.style.display = "none";
        videoTab.style.display = "flex";
        imagesTabButton.classList.remove("active-tab");
        videoTabButton.classList.add("active-tab");

        // Use placeholder video URL
        popupVideo.src = placeholderVideoUrl;
    }

    // Event listeners for tab buttons
    imagesTabButton.addEventListener("click", () => {
        switchToImagesTab();
    });

    videoTabButton.addEventListener("click", () => {
        switchToVideoTab();
    });

    // Reset tabs to default state when opening the popup
    function resetTabs() {
        console.log("Resetting tabs to default state");
        switchToImagesTab();
        popupVideo.src = ""; // Clear the video URL when switching tabs
    }

    // Example: Call resetTabs when the popup opens
    function openPopup() {
        const popupOverlay = document.getElementById("popup_overlay");
        popupOverlay.style.display = "flex";
        document.body.style.overflow = "hidden";

        resetTabs(); // Reset tabs to their default state
    }
});


