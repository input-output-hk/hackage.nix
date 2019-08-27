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
    flags = { memory-safe = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "quicklz"; version = "1.5.0.11"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "mad.one@gmail.com";
      author = "Austin Seipp";
      homepage = "http://github.com/thoughtpolice/hs-quicklz";
      url = "";
      synopsis = "QuickLZ compression for ByteStrings";
      description = "This package provides a high level binding to the QuickLZ\ncompression library for @ByteStrings@, under the GPLv2\nlicense. QuickLZ is fast and compresses very well. Check out the\nhome page: <http://quicklz.com>\n\nThis package includes the QuickLZ 1.5.0 source code, at\ncompression level 1 and streaming mode disabled.\n\nThe versioning scheme for this package is unusual. QuickLZ tries to\nbe as fast as possible, and will break backwards compatibility to\nachieve it in newer versions. This versioning scheme reflects the\nQuickLZ versioning scheme: the first three digits of version w.x.y.z\nare the quicklz version, with the 'z' component (and any further\nneeded ones) being updates to this package, not quicklz itself.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."quicklz" or (buildDepError "quicklz"))
            ];
          };
        };
      };
    }