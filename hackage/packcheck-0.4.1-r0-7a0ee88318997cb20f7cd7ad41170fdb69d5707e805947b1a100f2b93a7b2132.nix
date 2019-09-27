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
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "packcheck"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Harendra Kumar";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "https://github.com/harendra-kumar/packcheck";
      url = "";
      synopsis = "Universal build and CI testing for Haskell packages";
      description = "This package contains a universal CI/build script @packcheck.sh@ and config\nfiles designed such that you can just copy over @.travis.yml@, @appveyor.yml@\nor @.circleci/config.yml@ to your package repo and your package is CI ready\nin a jiffy.  For local testing, copy @packcheck.sh@ to your local machine,\nput it in your PATH, and run it from your package directory:\n\n> \$ packcheck.sh cabal-new\n> \$ packcheck.sh cabal\n> \$ packcheck.sh stack\n\nYou can try it on this package itself. @packcheck.sh@ uniformly, consistently\nbuilds and comprehensively sanity tests a Haskell package across build tools\n(stack/cabal) and across all platforms (Linux\\/MacOS\\/Windows).  You do not\nneed to be familiar with any of the build tools to use it.\n\nThis is also a minimal yet complete model package (with tests, benchmarks, CI\nalready working) that can be used as a starting point to develop a new\npackage. Beginners can use it to learn about haskell package metadata\nstructure, benchmarks, tests, CI configs etc.\n\nSee the README for comprehensive documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."packcheck" or (buildDepError "packcheck"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."packcheck" or (buildDepError "packcheck"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }