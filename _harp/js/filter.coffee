$(document).ready ->
    topic_map =
        "food": 0
        "fashion": 1
        "art": 2
        "life": 3
        "home": 4
    medium_map =
        "photo": 0
        "video": 1
        "writing": 2
        "gifs": 3

    selected_topic = null
    selected_medium = null

    filterStories = () ->
        $(".story").addClass("hidden")
        $(".story").filter () ->
            has_topic = (not selected_topic?) or selected_topic in $(this).attr("data-topics")
            has_medium = (not selected_medium?) or selected_medium in $(this).attr("data-mediums")
            has_topic and has_medium
        .removeClass("hidden")

    $(".topic").click (e) ->
        selected_topic = topic_map[$(e.target).attr("id")].toString()
        filterStories()
        $(".topic").removeClass("active")
        $(this).addClass("active")
        $(".top").addClass("active-selection")

    $(".medium").click (e) ->
        selected_medium = medium_map[$(e.target).attr("id")].toString()
        filterStories()
        $(".medium").removeClass("active")
        $(this).addClass("active")
        $(".med").addClass("active-selection")

    $(".top").click (e) ->
        selected_topic = null
        filterStories()
        $(".topic").removeClass("active")
        $(".top").removeClass("active-selection")

    $(".med").click (e) ->
        selected_medium = null
        filterStories()
        $(".medium").removeClass("active")
        $(".med").removeClass("active-selection")


    $(".bio-link").click (e) ->
        if $(this).text() == "About Me"
            $(".grid").hide()
            $(".bio").show()
            $(".controls").hide()
            $(this).text("Home")

        else
            $(".grid").show()
            $(".bio").hide()
            $(".controls").show()
            $(this).text("About Me")