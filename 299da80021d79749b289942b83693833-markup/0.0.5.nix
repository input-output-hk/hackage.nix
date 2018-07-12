{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "markup";
          version = "0.0.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Abstraction for markup languages";
        description = "This library tries to make things more uniformly controlled when working with\nmarkup languages in haskell - namely /deployment/ of markup assets.\n\nDeployment, from this library's perspective, means /how/ something can be\nrendered to markup, yet still achieve the same \"result\" to the end user (namely\nthe DOM).\n\nWe use monad transformers to infer the deployment mechanism for a context of\nmarkup. The three deployment mechanisms provided include /inline/ (content is\nslapped between markup tags), /hosted/ (entirely external - uses raw text as a\nurl), and /local/ (which uses the <hackage.haskell.org/package/urlpath urlpath>\nlibrary to realize what kind of link to create).\n\nAs an example, here is remotely hosted image:\n\n> image = deploy Image \"foo.png\" :: HostedMarkupM (Html ())\n>\n> λ> renderMarkup image\n>\n> <img src=\"foo.png\">\n\nHere is the same example, going relative instead:\n\n> image :: LocalMarkupM (HtmlT AbsoluteUrl ())\n> image = deploy Image \$ \"foo.png\" <?> (\"some\",\"getparam\")\n>\n> λ> (runUrlReader \$ renderTextT \$ renderMarkup image \$\n>    ) \"example.com\"\n>\n> \"<img src=\\\"example.com/foo.png?some=getparam\\\">\"";
        buildType = "Simple";
      };
      components = {
        "markup" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.lucid
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.text
            hsPkgs.urlpath
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
            ];
          };
        };
      };
    }