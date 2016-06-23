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

    $(".medium").click (e) ->
        selected_medium = medium_map[$(e.target).attr("id")].toString()
        filterStories()
        $(".medium").removeClass("active")
        $(this).addClass("active")

    $(".top").click (e) ->
        selected_topic = null
        filterStories()
        $(".topic").removeClass("active")

    $(".med").click (e) ->
        selected_medium = null
        filterStories()
        $(".medium").removeClass("active")