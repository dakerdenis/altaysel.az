document.addEventListener('DOMContentLoaded', function () {
    // Global theme state
    let isDarkTheme = false

    // Header Element
    const header = document.querySelector('.header')

    // Update header class based on scroll and theme state
    function updateHeaderClass () {
        const isScrolled = window.scrollY > 0

        if (header) {
            header.classList.remove(
                'header__scrolled',
                'header__scrolled_black'
            )

            if (isScrolled) {
                header.classList.add(
                    isDarkTheme ? 'header__scrolled_black' : 'header__scrolled'
                )
            }
        }
    }

    // Setup header scroll handling
    function setupHeaderScroll () {
        window.addEventListener('scroll', updateHeaderClass)
        updateHeaderClass() // Initial call on page load
    }

    // Theme changer functionality
    function setupThemeChanger () {
        const themeChanger = document.querySelector(
            '.main__block__theme-changer'
        )
        const themeCircle = document.querySelector('.__theme-surface__circle')
        const themeSurface = document.querySelector('.__theme-surface')
        const themeMoon = document.querySelector('.__theme-surface__moon')

        function toggleTheme () {
            isDarkTheme = !isDarkTheme

            // Update theme-specific styles
            if (themeCircle)
                themeCircle.style.left = isDarkTheme ? '40px' : '-12px'
            if (themeSurface)
                themeSurface.style.backgroundColor = isDarkTheme
                    ? 'black'
                    : 'var(--orange)'
            if (themeMoon) themeMoon.style.opacity = isDarkTheme ? '0' : '1'

            // Update background colors for all elements with id="background_change"
            const backgroundChanges =
                document.querySelectorAll('#background_change')
            const backgroundChangeMain = document.getElementById(
                'background_change_main'
            )

            backgroundChanges.forEach(element => {
                element.style.backgroundColor = isDarkTheme ? '#000' : '#fff'
            })

            if (backgroundChangeMain) {
                backgroundChangeMain.style.backgroundColor = isDarkTheme
                    ? '#000'
                    : '#fff'
            }

            // Update font colors for all elements with class "font_change"
            const fontChangeElements = document.querySelectorAll('.font_change')
            fontChangeElements.forEach(element => {
                element.style.color = isDarkTheme ? '#fff' : '#000'
            })

            // Update image sources
            const imageMappings = [
                {
                    id: 'image_change5',
                    darkSrc: './style/imgs/about_3_black.jpeg',
                    lightSrc: './style/imgs/about_3_white.jpeg'
                },
                {
                    id: 'image_change4',
                    darkSrc: './style/imgs/about_2_black.jpeg',
                    lightSrc: './style/imgs/about_2_white.jpeg'
                },
                {
                    id: 'image_change3',
                    darkSrc: './style/imgs/about_1_black.jpeg',
                    lightSrc: './style/imgs/about_1_white.jpeg'
                }
            ]

            imageMappings.forEach(({ id, darkSrc, lightSrc }) => {
                const image = document.getElementById(id)
                if (image) {
                    image.src = isDarkTheme ? darkSrc : lightSrc
                }
            })

            document.body.classList.toggle('dark-theme', isDarkTheme)

            // Update header immediately to reflect the theme
            updateHeaderClass()
        }

        if (themeChanger) {
            themeChanger.addEventListener('click', toggleTheme)
        }
    }

    // Preloader setup
    function setupPreloader () {
        const preloader = document.getElementById('preloader')
        const minDuration = 100
        const startTime = performance.now()

        function hidePreloader () {
            const elapsedTime = performance.now() - startTime
            const remainingTime = Math.max(0, minDuration - elapsedTime)

            setTimeout(() => {
                if (preloader) preloader.style.display = 'none'
            }, remainingTime)
        }

        window.addEventListener('load', hidePreloader)
    }

    // Scroll-to functionality
    function setupScrollTo () {
        const buttons = document.querySelectorAll(
            '.header__navigation__container button'
        )
        buttons.forEach(button => {
            button.addEventListener('click', () => {
                const targetElement = document.querySelector(
                    button.dataset.target
                )
                if (targetElement) {
                    window.scrollTo({
                        top: targetElement.offsetTop - 95,
                        behavior: 'smooth'
                    })
                }
            })
        })
    }

    // Language dropdown toggle
    function setupLanguageDropdown () {
        const languageToggle = document.querySelector('.language__toggle')
        const languageDropdown = document.querySelector('.language__dropdown')
        const arrow = document.querySelector('.arrow')

        if (!languageToggle || !languageDropdown || !arrow) return

        languageToggle.addEventListener('click', event => {
            event.stopPropagation()
            languageDropdown.classList.toggle('show')
            arrow.classList.toggle('rotate')
        })

        document.addEventListener('click', event => {
            if (
                !languageToggle.contains(event.target) &&
                !languageDropdown.contains(event.target)
            ) {
                languageDropdown.classList.remove('show')
                arrow.classList.remove('rotate')
            }
        })
    }

    // Number animations on scroll
    function setupNumberAnimation () {
        const numberBlocks = document.querySelectorAll(
            '.number__block__element'
        )

        function isInViewport (element) {
            const rect = element.getBoundingClientRect()
            return (
                rect.top >= 0 &&
                rect.left >= 0 &&
                rect.bottom <=
                    (window.innerHeight ||
                        document.documentElement.clientHeight) &&
                rect.right <=
                    (window.innerWidth || document.documentElement.clientWidth)
            )
        }

        function countNumbers (element) {
            const targetNumber = parseInt(
                element.querySelector('span').innerText
            )
            let currentNumber = 0
            const increment = Math.ceil(targetNumber / 60)

            const interval = setInterval(() => {
                if (currentNumber < targetNumber) {
                    currentNumber += increment
                    if (currentNumber > targetNumber)
                        currentNumber = targetNumber
                    element.querySelector('span').innerText = currentNumber
                } else {
                    clearInterval(interval)
                }
            }, 20)

            element.classList.add('counted')
        }

        function handleScroll () {
            numberBlocks.forEach(block => {
                if (
                    isInViewport(block) &&
                    !block.classList.contains('counted')
                ) {
                    countNumbers(block)
                }
            })
        }

        handleScroll() // Initial call
        window.addEventListener('scroll', handleScroll)
    }

    // Initialize all functionality
    setupPreloader()
    setupHeaderScroll()
    setupThemeChanger()
    setupScrollTo()
    setupLanguageDropdown()
    setupNumberAnimation()

    // Function to toggle service content
    // Function to toggle service content
    // Function to toggle service content

    // Function to toggle service content
    const serviceElements = document.querySelectorAll(
        '.services__block__element'
    )
    function toggleServiceContent (service) {
        const link = service.querySelector('.services__element__link')
        const defaultElement = service.querySelector(
            '.services__block__element-default'
        )
        const openedElement = service.querySelector(
            '.services__block__element-oppened'
        )
        defaultElement.style.display = 'none'
        openedElement.style.display = 'block'

        document.addEventListener('click', closeOpenedContent)

        function closeOpenedContent (event) {
            if (!service.contains(event.target)) {
                defaultElement.style.display = 'block'
                openedElement.style.display = 'none'
                document.removeEventListener('click', closeOpenedContent)
            }
        }
    }
    serviceElements.forEach(service =>
        service
            .querySelector('.services__element__link')
            .addEventListener('click', event => {
                event.stopPropagation()
                toggleServiceContent(service)
            })
    )

    //! POPUP CODE
    //! POPUP CODE
    //! POPUP CODE
    let projectsData = []
    let mapProjectsData = [] // Separate variable for map projects
    let futureProjectsData = []; // Separate variable for future projects
    // Function to fetch JSON data from external file THIS FUNCTIONS IS WROKING
    // Fetch data from the API
    async function fetchData (url) {
        const response = await fetch(url)
        if (!response.ok) {
            throw new Error(`Failed to fetch data from ${url}`)
        }
        return response.json()
    }
    // Function to fetch JSON data from external file THIS FUNCTIONS IS WROKING
    // Load project data (Remove handlePopupContainers since it's undefined)

    // Function to fetch JSON data from external file THIS FUNCTIONS IS WROKING

    //////////////////!!!POPUP NEW CODE:
    const popupOverlay = document.getElementById('popup_overlay')
    const popupCloseButton = document.getElementById('popup_close')
    const projectButtons = document.querySelectorAll(
        '.projects__block-hover__popup'
    )

    // Popup Elements
    const popupYear = document.getElementById('popup_year')
    const popupLocation = document.getElementById('popup_location')
    const popupDescription = document.getElementById('popup_description')
    const popupImage = document.getElementById('popup_image')
    const prevButton = document.getElementById('prev_button')
    const nextButton = document.getElementById('next_button')
    const popupVideo = document.getElementById('popup_video')

    let currentImageIndex = 0
    let imagesArray = []

    // Function to open the popup
    // Function to open the popup
    function openPopup(projectData, isMapProject = false) {
        if (popupOverlay) {
            popupOverlay.style.display = 'flex';
            document.body.style.overflow = 'hidden';
    
            // Populate data into popup
            if (popupYear)
                popupYear.textContent = projectData.year || 'Year not available';
            if (popupLocation) {
                popupLocation.href = projectData.location || '#';
                popupLocation.textContent = 'Ətraflı';
            }
    
            const currentLocale = window.location.pathname.includes('/az')
                ? 'desc_az'
                : 'desc_ru';
            if (popupDescription) {
                popupDescription.textContent =
                    projectData[currentLocale] || 'No description available.';
            }
    
            const popupName = document.getElementById('popup_name');
            if (popupName) {
                const nameLocale = window.location.pathname.includes('/az')
                    ? 'name_az'
                    : 'name_ru';
                popupName.textContent =
                    projectData[nameLocale] || 'No name available.';
            }
    
            // Handle images carousel
            imagesArray = [];
            if (projectData.main_image) {
                imagesArray.push(projectData.main_image);
            }
            if (Array.isArray(projectData.images)) {
                imagesArray = [...imagesArray, ...projectData.images];
            } else {
                try {
                    imagesArray = [
                        ...imagesArray,
                        ...JSON.parse(projectData.images),
                    ];
                } catch (e) {
                    console.error('Failed to parse images:', e);
                }
            }
    
            if (imagesArray.length > 0) {
                currentImageIndex = 0;
                updateImage();
            }
    
            // Handle video section
            const videoTab = document.getElementById('video_tab');
            const videoTabButton = document.getElementById('video_tab_button');
            if (isMapProject) {
                // Hide video section for map projects
                if (videoTab) videoTab.style.display = 'none';
                if (videoTabButton) videoTabButton.style.display = 'none';
    
                // Add style to .popup_tab-images button
                const imagesTabButton = document.getElementById('images_tab_button');
                if (imagesTabButton) {
                    imagesTabButton.style.width = '100%'; // Make the button full width
                }
            } else {
                // Show video section for main projects
                if (videoTab) videoTab.style.display = 'flex';
                if (videoTabButton) videoTabButton.style.display = 'block';
    
                // Reset .popup_tab-images button style
                const imagesTabButton = document.getElementById('images_tab_button');
                if (imagesTabButton) {
                    imagesTabButton.style.width = ''; // Reset to default
                }
            }
    
            // Hide social sharing buttons if it's a map project
            const socialContainer = document.querySelector(
                '.popup__social__container'
            );
            if (socialContainer) {
                socialContainer.style.display = isMapProject ? 'none' : 'block';
            }
        }
    }
    
    // Event listener for map project buttons
    const mapProjectButtons = document.querySelectorAll(
        '.map__project-view_more'
    )
    mapProjectButtons.forEach(button => {
        button.addEventListener('click', function () {
            const projectId = button.dataset.projectId
            if (!projectId) {
                console.error('No project ID found for button:', button)
                return
            }

            const projectData = mapProjectsData.find(
                project => project.id == projectId
            )
            if (projectData) {
                openPopup(projectData, true) // Open popup for map project, set isMapProject = true
            } else {
                console.error('Map project not found:', projectId)
            }
        })
    })
    function updateSocialMediaLinks (projectId, locale) {
        const projectUrl = `${window.location.origin}/${locale}?projectId=${projectId}`
        const facebookLink = `https://www.facebook.com/sharer/sharer.php?u=${encodeURIComponent(
            projectUrl
        )}`
        const twitterLink = `https://twitter.com/intent/tweet?url=${encodeURIComponent(
            projectUrl
        )}`
        const linkedinLink = `https://www.linkedin.com/sharing/share-offsite/?url=${encodeURIComponent(
            projectUrl
        )}`
        const whatsappLink = `https://wa.me/?text=${encodeURIComponent(
            projectUrl
        )}`
        const telegramLink = `https://t.me/share/url?url=${encodeURIComponent(
            projectUrl
        )}`

        document.querySelector('.popup-social .facebook').href = facebookLink
        document.querySelector('.popup-social .twitter').href = twitterLink
        document.querySelector('.popup-social .linkedin').href = linkedinLink
        document.querySelector('.popup-social .whatsapp').href = whatsappLink
        document.querySelector('.popup-social .telegram').href = telegramLink
    }

    // Function to close the popup
    function closePopup () {
        if (popupOverlay) {
            popupOverlay.style.display = 'none'
            document.body.style.overflow = 'auto' // Enable scrolling
            if (popupVideo) {
                popupVideo.src = '' // Stop video playback
            }
        }
    }

    // Update the current image in the carousel
    function updateImage () {
        if (imagesArray.length > 0 && popupImage) {
            popupImage.src = `./archi/public/uploads/projects/${imagesArray[currentImageIndex]}`
        }
    }
    // Load project data
    Promise.all([
        fetchData('/api/mainprojects')
            .then(data => {
                projectsData = data;
                console.log('Fetched main projects data:', projectsData);
            })
            .catch(error => {
                console.error('Error fetching main projects data:', error);
            }),
        fetchData('/api/mapprojects')
            .then(data => {
                mapProjectsData = data; // Store map projects separately
                console.log('Fetched map projects data:', mapProjectsData);
            })
            .catch(error => {
                console.error('Error fetching map projects data:', error);
            }),
        fetchData('/api/futureprojects')
            .then(data => {
                futureProjectsData = data; // Store future projects separately
                console.log('Fetched future projects data:', futureProjectsData);
            })
            .catch(error => {
                console.error('Error fetching future projects data:', error);
            })
    ])
        .then(([mainProjectData, mapProjectData, futureProjectData]) => {
            console.log('Fetched all data:', {
                mainProjectData,
                mapProjectData,
                futureProjectData
            });
    
            // Check if a project ID is preloaded (from PHP or URL query)
            const urlParams = new URLSearchParams(window.location.search);
            const projectId = urlParams.get('projectId');
            if (projectId) {
                // Check main, map, and future projects
                const projectData =
                    projectsData.find(project => project.id == projectId) ||
                    mapProjectsData.find(project => project.id == projectId) ||
                    futureProjectsData.find(project => project.id == projectId);
    
                if (projectData) {
                    openPopup(
                        projectData,
                        mapProjectsData.includes(projectData)
                    ); // Pass a flag for map projects
                } else {
                    console.error('Project data not found for ID:', projectId);
                }
            }
        })
        .catch(error => {
            console.error('Error fetching project data:', error);
        });

    // Navigate to the previous image
    function showPreviousImage () {
        if (imagesArray.length > 0) {
            currentImageIndex =
                (currentImageIndex - 1 + imagesArray.length) %
                imagesArray.length
            updateImage()
        }
    }

    // Navigate to the next image
    function showNextImage () {
        if (imagesArray.length > 0) {
            currentImageIndex = (currentImageIndex + 1) % imagesArray.length
            updateImage()
        }
    }

    // Event listeners for navigation buttons
    if (prevButton) {
        prevButton.addEventListener('click', showPreviousImage)
    }
    if (nextButton) {
        nextButton.addEventListener('click', showNextImage)
    }

    // Add event listeners to project buttons to fetch and display project data
    projectButtons.forEach(button => {
        button.addEventListener('click', function () {
            const projectId = button.dataset.projectId
            if (!projectId) {
                console.error('No project ID found for button:', button)
                return
            }

            // Find the project in the fetched data
            const projectData = projectsData.find(
                project => project.id == projectId
            )
            if (projectData) {
                openPopup(projectData)
                updateSocialMediaLinks(
                    projectData.id,
                    window.location.pathname.includes('/az') ? 'az' : 'ru'
                )
            } else {
                console.error('Project not found:', projectId)
            }
        })
    })

    // Add event listener to close button to close the popup
    if (popupCloseButton) {
        popupCloseButton.addEventListener('click', closePopup)
    }

    // Close the popup if clicking outside the content
    if (popupOverlay) {
        popupOverlay.addEventListener('click', function (event) {
            if (event.target === popupOverlay) {
                closePopup()
            }
        })
    }

    // Check if a project ID is preloaded (from PHP or URL query)
    const urlParams = new URLSearchParams(window.location.search);
    const projectId = urlParams.get('projectId');
    if (projectId) {
        const projectData =
            projectsData.find(project => project.id == projectId) ||
            mapProjectsData.find(project => project.id == projectId) ||
            futureProjectsData.find(project => project.id == projectId);
    
        if (projectData) {
            openPopup(
                projectData,
                mapProjectsData.includes(projectData) // `true` for map projects
            );
        } else {
            console.error('Project data not found for ID:', projectId);
        }
    }
    

    const futureProjectButtons = document.querySelectorAll(
        '.future_slide__link'
    );
    futureProjectButtons.forEach(button => {
        button.addEventListener('click', function () {
            const projectId = button.dataset.projectId;
            if (!projectId) {
                console.error('No project ID found for button:', button);
                return;
            }
    
            const projectData = futureProjectsData.find(
                project => project.id == projectId
            );
            if (projectData) {
                openPopup(projectData); // Open popup for future project
            } else {
                console.error('Future project not found:', projectId);
            }
        });
    });
})

document.addEventListener('DOMContentLoaded', function () {
    const imagesTabButton = document.getElementById('images_tab_button')
    const videoTabButton = document.getElementById('video_tab_button')
    const imagesTab = document.getElementById('images_tab')
    const videoTab = document.getElementById('video_tab')
    const popupVideo = document.getElementById('popup_video')

    const placeholderVideoUrl =
        'https://www.youtube.com/embed/H_ReGaTJ92s?si=F7ZSyz1kUfDl8Sp1' // Replace with your placeholder video UR
    function switchToImagesTab () {
        console.log('Images tab clicked')
        imagesTab.style.display = 'flex'
        videoTab.style.display = 'none'
        imagesTabButton.classList.add('active-tab')
        videoTabButton.classList.remove('active-tab')
    }

    function switchToVideoTab () {
        console.log('Video tab clicked')
        imagesTab.style.display = 'none'
        videoTab.style.display = 'flex'
        imagesTabButton.classList.remove('active-tab')
        videoTabButton.classList.add('active-tab')

        // Use placeholder video URL
        popupVideo.src = placeholderVideoUrl
    }

    // Event listeners for tab buttons
    imagesTabButton.addEventListener('click', () => {
        switchToImagesTab()
    })

    videoTabButton.addEventListener('click', () => {
        switchToVideoTab()
    })

    // Reset tabs to default state when opening the popup
    function resetTabs () {
        console.log('Resetting tabs to default state')
        switchToImagesTab()
        popupVideo.src = '' // Clear the video URL when switching tabs
    }

    // Example: Call resetTabs when the popup opens
    function openPopup () {
        const popupOverlay = document.getElementById('popup_overlay')
        popupOverlay.style.display = 'flex'
        document.body.style.overflow = 'hidden'

        resetTabs() // Reset tabs to their default state
    }

    // Check if a project ID is preloaded (from PHP)
    if (window.preloadedProjectId) {
        const projectId = window.preloadedProjectId

        // Find the project data from the fetched data
        const projectData = projectsData.find(
            project => project.id == projectId
        )
        if (projectData) {
            openPopup(projectData) // Use the existing `openPopup` function
            updateSocialMediaLinks(
                projectData.id,
                window.location.pathname.includes('/az') ? 'az' : 'ru'
            )
        } else {
            console.error('Project data not found for ID:', projectId)
        }
    }
})
