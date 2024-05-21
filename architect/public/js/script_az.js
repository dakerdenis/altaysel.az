document.addEventListener('DOMContentLoaded', function () {
    // Hide the preloader when all content is loaded or after 1.5 seconds
    const preloader = document.getElementById('preloader');
 
    // Set minimum duration for preloader visibility (1.5 seconds)
    const minDuration = 100;
    const startTime = performance.now();
 
    // Function to hide the preloader
    function hidePreloader() {
        const currentTime = performance.now();
        const elapsedTime = currentTime - startTime;
        const remainingTime = Math.max(0, minDuration - elapsedTime);
 
        setTimeout(function() {
            preloader.style.display = 'none';
        }, remainingTime);
    }
 
    // Hide the preloader when all content is loaded
    window.addEventListener('load', function() {
        hidePreloader();
    });
 
    // Hide the preloader after 1.5 seconds even if all content is not loaded
    hidePreloader();
     // Theme changer functionality
     // Theme changer functionality
    // Theme changer functionality
    // Theme changer functionality
    const themeChanger = document.querySelector('.main__block__theme-changer');
    const themeCircle = document.querySelector('.__theme-surface__circle');
    const themeSurface = document.querySelector('.__theme-surface');
    const themeMoon = document.querySelector('.__theme-surface__moon');
    const backgroundChange = document.getElementById('background_change');
    const backgroundChange2 = document.getElementById('background_change2');


    const colorChangeElements = document.querySelectorAll('#color_change');
    const imageChange = document.getElementById('image_change');
    const imageChange2 = document.getElementById('image_change2');
    const imageChange3 = document.getElementById('image_change3');
    const imageChange4 = document.getElementById('image_change4');
    const imageChange5 = document.getElementById('image_change5');
    const imageChange6 = document.getElementById('image_change6');
    const backgroundChangeMain = document.getElementById('background_change_main');
    const backgroundChangeMainServices = document.querySelectorAll('#background_change_main_services');

    const backgroundChange3 = document.getElementById('background_change3');
    const colorchangeAbout = document.querySelectorAll('#color_change3'); 

     let isActive = false;
 
     function toggleTheme() {
        themeCircle.style.left = isActive ? '-12px' : '40px';
        themeSurface.style.backgroundColor = isActive ? 'var(--orange)' : 'black';
        themeMoon.style.opacity = isActive ? '1' : '0';
        backgroundChange.style.backgroundColor = isActive ? '' : 'black';
        backgroundChange2.style.background = isActive ? '' : 'linear-gradient(90deg, #000000 1.9%, rgba(154, 104, 17, 0.7) 21.65%, #000000 42.98%)';
        backgroundChange3.style.background = isActive ? '#ECE7E2' : '#323232';
        backgroundChange3.style.color = isActive ? '' : '#fff';
        colorchangeAbout.forEach(element => {
            element.style.color = isActive ? '' : '#fff';
        });


        colorChangeElements.forEach(element => element.style.color = isActive ? '' : 'white');
        imageChange.src = isActive ? './style/imgs/Vector1.svg' : './style/imgs/Vector2.svg';
        imageChange2.src = isActive ? './style/imgs/main_image_2.jpeg' : './style/imgs/main_image_1.jpeg';
        imageChange3.src = isActive ? './style/imgs/about_1_white.jpeg' : './style/imgs/about_1_black.jpeg';
        imageChange4.src = isActive ? './style/imgs/about_2_white.jpeg' : './style/imgs/about_2_black.jpeg';
        imageChange5.src = isActive ? './style/imgs/about_3_white.jpeg' : './style/imgs/about_3_black.jpeg';
        imageChange6.src = isActive ? './style/imgs/about_4_white.jpeg' : './style/imgs/about_4_black.jpeg';
        backgroundChangeMain.style.backgroundColor = isActive ? 'white' : 'black';
        backgroundChangeMainServices.forEach(element => {
            element.style.backgroundColor = isActive ? 'var(--cream)' : 'var(--grey3)';
            element.style.boxShadow = isActive ? '8px 8px 20px 0px #FFFFFF33' : 'none';
        });

        isActive = !isActive;
    }
     themeChanger.addEventListener('click', toggleTheme);
     // Header related functionality
     const header = document.querySelector('.header');
     const languageToggle = document.querySelector('.language__toggle');
     const languageDropdown = document.querySelector('.language__dropdown');
     const arrow = document.querySelector('.arrow');
     const numberBlocks = document.querySelectorAll('.number__block__element');
 
     function scrollToTarget(button) {
         const targetElement = document.querySelector(button.dataset.target);
         if (targetElement) {
             window.scrollTo({ top: targetElement.offsetTop - 95, behavior: 'smooth' });
         }
     }
 
     document.querySelectorAll('.header__navigation__container button').forEach(button => {
         button.addEventListener('click', () => scrollToTarget(button));
     });
 
     window.addEventListener('scroll', () => {
         header.classList.toggle(isActive ? 'header__scrolled_black' : 'header__scrolled', window.scrollY > 0);
         if (!window.scrollY) setTimeout(() => header.classList.add('header__transition'), 100);
     });
 
     languageToggle.addEventListener('click', event => {
         event.stopPropagation();
         languageDropdown.classList.toggle('show');
         arrow.classList.toggle('rotate');
     });
 
     document.addEventListener('click', event => {
         if (!languageToggle.contains(event.target) && !languageDropdown.contains(event.target)) {
             languageDropdown.classList.remove('show');
             arrow.classList.remove('rotate');
         }
     });
 
     function isInViewport(element) {
         const rect = element.getBoundingClientRect();
         return rect.top >= 0 && rect.left >= 0 && rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) && rect.right <= (window.innerWidth || document.documentElement.clientWidth);
     }
 
     function countNumbers(element) {
         const targetNumber = parseInt(element.querySelector('span').innerText);
         let currentNumber = 0;
         const increment = Math.ceil(targetNumber / 60);
 
         const interval = setInterval(() => {
             if (currentNumber < targetNumber) {
                 currentNumber += increment;
                 if (currentNumber > targetNumber) currentNumber = targetNumber;
                 element.querySelector('span').innerText = currentNumber;
             } else clearInterval(interval);
         }, 20);
 
         element.classList.add('counted');
     }
     function handleScroll() {
         numberBlocks.forEach(block => isInViewport(block) && !block.classList.contains('counted') && countNumbers(block));
     }
     handleScroll();
     window.addEventListener('scroll', handleScroll);    
     // Function to toggle service content
     const serviceElements = document.querySelectorAll('.services__block__element');
     function toggleServiceContent(service) {
         const link = service.querySelector('.services__element__link');
         const defaultElement = service.querySelector('.services__block__element-default');
         const openedElement = service.querySelector('.services__block__element-oppened');
         defaultElement.style.display = 'none';
         openedElement.style.display = 'block';
 
         document.addEventListener('click', closeOpenedContent);
 
         function closeOpenedContent(event) {
             if (!service.contains(event.target)) {
                 defaultElement.style.display = 'block';
                 openedElement.style.display = 'none';
                 document.removeEventListener('click', closeOpenedContent);
             }
         }
     }
     serviceElements.forEach(service => service.querySelector('.services__element__link').addEventListener('click', event => {
         event.stopPropagation();
         toggleServiceContent(service);
     }));
 
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
    fetchData('/api/mainprojects'),
    fetchData('/api/mapprojects'),
    fetchData('/api/futureprojects')
]).then(([mainProjectData, mapProjectData, futureProjectData]) => {
    handlePopupContainers(mainProjectData, mapProjectData, futureProjectData);
}).catch(error => {
    console.error('Error fetching project data:', error);
});

// Function to handle popup containers after fetching data
function handlePopupContainers(mainProjectData, mapProjectData, futureProjectData) {
    const popupContainers = document.querySelectorAll('.projects__block-hover__popup, .map__project-view_more, .future_slide__link');
    const popupImage = document.getElementById('popup_image');
    const popupName = document.getElementById('popup_name');
    const popupAdress = document.getElementById('popup__adress');
    const popupYear = document.getElementById('popup_year');
    const popupLocation = document.getElementById('popup_location');
    const popupDescription = document.getElementById('popup_description');
    const popupClose = document.getElementById('popup_close');
    const prevButton = document.getElementById('prev_button');
    const nextButton = document.getElementById('next_button');
    let currentImageIndex = 0;
    let currentData;

    popupContainers.forEach((popupContainer) => {
        popupContainer.addEventListener('click', () => {
            const projectId = popupContainer.dataset.projectId;
            let project = mainProjectData.find(project => project.id === parseInt(projectId));
            if (!project) {
                project = mapProjectData.find(project => project.id === parseInt(projectId));
            }
            if (!project) {
                project = futureProjectData.find(project => project.id === parseInt(projectId));
            }
            if (project) {
                createPopup(project);
            }
        });
    });

    function openPopup() {
        const popupOverlay = document.getElementById('popup_overlay');
        popupOverlay.style.display = 'flex';
        document.body.style.overflow = 'hidden';

        popupOverlay.addEventListener('click', event => {
            if (event.target === popupOverlay) closePopup();
        });
        popupClose.addEventListener('click', closePopup);
    }

    function closePopup() {
        const popupOverlay = document.getElementById('popup_overlay');
        popupOverlay.style.display = 'none';
        document.body.style.overflow = 'auto';
    }

    function updateImage() {
        if (currentData.images.length > 0) {
            const currentImageSrc = currentData.images[currentImageIndex];
            popupImage.src = `/uploads/projects/${currentImageSrc}`;
        }
    }

    function createPopup(data) {
        // Remove previous event listeners
        prevButton.removeEventListener('click', prevButtonClickHandler);
        nextButton.removeEventListener('click', nextButtonClickHandler);

        currentData = data;
        currentImageIndex = 0;

        // Ensure images is a proper array
        let images = [];
        try {
            images = Array.isArray(data.images) ? data.images : JSON.parse(data.images);
            if (!Array.isArray(images)) {
                throw new Error('Parsed images data is not an array');
            }
        } catch (e) {
            console.error('Error parsing images:', e);
            images = [];
        }

        // Add main_image to the beginning of the images array if not already present
        if (!images.includes(data.main_image)) {
            images.unshift(data.main_image);
        }
        currentData.images = images;

        if (images.length === 0) {
            popupImage.src = `/uploads/projects/${data.main_image}`;
            prevButton.style.display = 'none';
            nextButton.style.display = 'none';
        } else {
            popupImage.src = `/uploads/projects/${images[0]}`;
            prevButton.style.display = 'block';
            nextButton.style.display = 'block';
        }

        popupName.innerHTML = data.name_az;
        popupDescription.innerHTML = data.desc_az;
        popupAdress.innerHTML = data.adress;
        popupYear.innerHTML = ` ${data.year}`;
        popupLocation.href = data.location;

        prevButton.addEventListener('click', prevButtonClickHandler);
        nextButton.addEventListener('click', nextButtonClickHandler);

        openPopup();
    }

    const prevButtonClickHandler = () => {
        currentImageIndex = (currentImageIndex - 1 + currentData.images.length) % currentData.images.length;
        updateImage();
    };

    const nextButtonClickHandler = () => {
        currentImageIndex = (currentImageIndex + 1) % currentData.images.length;
        updateImage();
    };
}



 });
 
 
 
 
 
 
 
 
 
 
 