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
      identifier = { name = "markup"; version = "1.1.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."lucid" or (buildDepError "lucid"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."urlpath" or (buildDepError "urlpath"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }