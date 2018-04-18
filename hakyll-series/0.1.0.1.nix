{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hakyll-series";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "2016 Donnacha Oisín Kidney";
        maintainer = "mail@doisinkidney.com";
        author = "Donnacha Oisín Kidney";
        homepage = "https://github.com/oisdk/hakyll-series";
        url = "";
        synopsis = "Adds series functionality to hakyll";
        description = "Module for adding series functionality to hakyll.\n\nExample <https://oisdk.github.io/hakyll-series/ here>.\n\nIn your posts, provide metadata at the top like so:\n\n> ---\n> title: something\n> series: things\n> ---\n\nThis will add the following fields to the post:\n\n[@series@]: The name of the series\n[@seriesLength@]: The total number of posts in the series\n[@seriesCurPos@]: The position of the current post in the series\n[@seriesUrl@]: The URL of the series page\n\nUsing that, in your post template, something like this:\n\n>\n> \$if(series)\$\n>     <a href=\"\$seriesUrl\$\">Part \$seriesCurPos\$ of a \$seriesLength\$-part series on \$series\$</a>\n> \$endif\$\n\nWill render like this:\n\n> Part 1 of a 5-part series on things\n\nLinked to the aggregate page for the series, which would render something like this:\n\n> Things\n> Part 1: something\n\nTo add it to your blog, add something like this to your @main@:\n\n> series <- buildSeries \"posts/*\" (fromCapture \"series/*.html\")\n>\n> tagsRules series \$ \\(s:erie) pattrn -> do\n>     let title = toUpper s : erie\n>     route idRoute\n>     compile \$ do\n>         posts <- chronological =<< loadAll pattrn\n>         let ctx = constField \"title\" title `mappend`\n>                   listField \"posts\" postCtx (pure posts) `mappend`\n>                   defaultContext\n>\n>         makeItem \"\"\n>             >>= loadAndApplyTemplate \"templates/series.html\" ctx\n>             >>= loadAndApplyTemplate \"templates/default.html\" ctx\n>             >>= relativizeUrls\n\nTo have access to the series context in each post, change the post rule to something like this:\n\n> match \"posts/*\" \$ do\n>     route \$ setExtension \"html\"\n>     compile \$ pandocCompiler\n>         >>= loadAndApplyTemplate \"templates/post.html\"    (postCtxWithSeries series)\n>         >>= loadAndApplyTemplate \"templates/default.html\" (postCtxWithSeries series)\n>         >>= relativizeUrls\n\nWhere `postCtxWithSeries` can be something like:\n\n> postCtxWithSeries :: Tags -> Context String\n> postCtxWithSeries series = seriesField series `mappend` postCtx\n\nA minimal example is provided in this repo, on top of the default hakyll setup. (it also provides the templates)";
        buildType = "Simple";
      };
      components = {
        hakyll-series = {
          depends  = [
            hsPkgs.base
            hsPkgs.hakyll
            hsPkgs.containers
          ];
        };
      };
    }