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
      specVersion = "1.6";
      identifier = { name = "repa-devil"; version = "0.3.2.3"; };
      license = "BSD-3-Clause";
      copyright = "Don Stewart (c) 2011, Raphael Javaux (c) 2012";
      maintainer = "Raphael Javaux <raphaeljavaux[at]gmail.com>";
      author = "Don Stewart, Raphael Javaux";
      homepage = "https://github.com/RaphaelJ/repa-devil";
      url = "";
      synopsis = "Support for image reading and writing of Repa arrays using in-place FFI calls";
      description = "The repa-image library adds support for reading and\nwriting images in many formats based on the DevIL\nopen source image library. Image data is represented in Haskell\nas typed, multi-dimensional repa arrays.\n\nDeveloper\\'s Image Library (DevIL) is a library to\ndevelop applications with very powerful image\nloading capabilities, yet with a relatively simple\ninterface. DevIL can load, save, convert,\nmanipulate, filter and display a wide variety of\nimage formats, including:\n\n* BMP, ICO, JPG, PNG, PNM, TGA, TIF, GIF, EXIF and many more.\n\n/References:/\n\n* <http://hackage.haskell.org/package/repa>\n\n* <http://openil.sourceforge.net/>\n\n* <http://www.haskell.org/haskellwiki/Numeric_Haskell:_A_Repa_Tutorial>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."repa" or (buildDepError "repa"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        libs = [ (pkgs."IL" or (sysDepError "IL")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }