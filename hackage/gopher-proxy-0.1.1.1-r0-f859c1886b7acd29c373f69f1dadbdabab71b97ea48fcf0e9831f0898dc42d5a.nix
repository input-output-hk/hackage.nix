let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gopher-proxy"; version = "0.1.1.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "git@lukasepple.de";
      author = "sternenseemann";
      homepage = "https://github.com/sternenseemann/gopher-proxy";
      url = "";
      synopsis = "proxy gopher over http";
      description = "@gopher-proxy@ allows to proxy gopher over HTTP, which is mainly useful for HTTP-ifying a specific gopher space.\n\nA simple invocation looks like this:\n\n@\ngopher-proxy --host example.org --http-port 8080\n@\n\nIn this particular example @gopher-proxy@ does the following things:\n\n* Takes HTTP requests on @127.0.0.1:8080@ (to be used by a proxying web server, like nginx), converts those to gopher requests to @example.org@ and returns the gopher responses as HTTP responses\n\n* Links menu items pointing to external servers to @gopher://@ URLs (this ensures that only one gopher server is proxied) and recognizes <https://en.wikipedia.org/wiki/Gopher_(protocol)#URL_links URL links> which are converted to normal HTML links\n\n* Tries to guess the correct mime-type for every gopher-served file (as it is not included in the response) and wraps text files in a HTML container.\n\n* And generally works hard to offer the best HTTP equivalent of a given gopher space :)\n\nTo learn about the other parameters for tweaking the behavior of @gopher-proxy@ <#readme see the readme>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gopher-proxy" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."lucid" or (buildDepError "lucid"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."mime-types" or (buildDepError "mime-types"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        };
      };
    }