{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gopher-proxy"; version = "0.1.1.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "git@lukasepple.de";
      author = "sternenseemann";
      homepage = "https://github.com/sternenseemann/gopher-proxy";
      url = "";
      synopsis = "proxy gopher over http";
      description = "@gopher-proxy@ allows to proxy gopher over HTTP, which is mainly useful for HTTP-ifying a specific gopher space.\n\nA simple invocation looks like this:\n\n@\ngopher-proxy --host example.org --http-port 8080\n@\n\nIn this particular example @gopher-proxy@ does the following things:\n\n* Takes HTTP requests on @127.0.0.1:8080@ (to be used by a proxying web server, like nginx), converts those to gopher requests to @example.org@ and returns the gopher responses as HTTP responses\n\n* Links menu items pointing to external servers to @gopher:\\/\\/@ URLs (this ensures that only one gopher server is proxied) and recognizes <https://en.wikipedia.org/wiki/Gopher_(protocol)#URL_links URL links> which are converted to normal HTML links\n\n* Tries to guess the correct mime-type for every gopher-served file (as it is not included in the response) and wraps text files in a HTML container.\n\n* And generally works hard to offer the best HTTP equivalent of a given gopher space :)\n\nTo learn about the other parameters for tweaking the behavior of @gopher-proxy@ <#readme see the readme>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gopher-proxy" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."mime-types" or ((hsPkgs.pkgs-errors).buildDepError "mime-types"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }