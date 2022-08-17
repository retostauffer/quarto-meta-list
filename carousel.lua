


-- Custom function 'carousel' for shortcode {{< carousel >}}.
-- Idea: processing list meta information from qmd file.
carousel = function(args, kwargs, meta)
    -- extracting Str from meta
    print("[DEBUG] Accessing meta.reto and print the content (string)")
    print(pandoc.utils.stringify(meta["reto"]))
    -- extracting List from meta
    print("[DEBUG] Trying to access meta.carousel")
    print(pandoc.utils.stringify(meta["carousel"]))
    -- dummy return
    return pandoc.RawInline("html", "<i>-> Dummy return from carousel shortcode.</i>")
end

return { ["carousel"] = carousel }
