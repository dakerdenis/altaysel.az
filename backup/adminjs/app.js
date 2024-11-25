document.addEventListener('DOMContentLoaded', function () {
    const descElements = document.querySelectorAll('.project__element__desc');

    descElements.forEach(desc => {
        const text = desc.textContent.trim();
        const lineHeight = parseInt(window.getComputedStyle(desc).lineHeight);
        const maxHeight = lineHeight * 3; // Max height for 3 lines
        const ellipsis = '...';

        if (desc.offsetHeight > maxHeight) {
            const words = text.split(' ');
            let newText = '';

            // Iterate through words until the height constraint is met
            for (let i = 0; i < words.length; i++) {
                newText += words[i] + ' ';
                desc.textContent = newText + ellipsis;

                if (desc.offsetHeight > maxHeight) {
                    // Calculate available space for characters
                    const availableSpace = desc.offsetWidth - desc.scrollWidth;
                    const charactersToRemove = Math.ceil(availableSpace / 16); // Assuming average character width of 16px (adjust as needed)

                    // Remove characters from newText
                    newText = newText.slice(0, -charactersToRemove);
                    desc.textContent = newText.trim() + ellipsis;
                    break;
                }
            }
        }
    });
});
