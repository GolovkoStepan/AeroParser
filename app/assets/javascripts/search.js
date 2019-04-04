document.addEventListener("turbolinks:load", function() {
    $(function () {
        $('input[type="text"]').keyup(function () {
            let searchText = $(this).val();

            $('ul > li').each(function () {
                let currentLiText = $(this).text().toLowerCase(),
                    showCurrentLi = currentLiText.indexOf(searchText.toLowerCase()) !== -1;

                $(this).toggle(showCurrentLi);
            });
        });
    });
});