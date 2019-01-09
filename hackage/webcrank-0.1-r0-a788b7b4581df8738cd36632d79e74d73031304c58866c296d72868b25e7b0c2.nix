{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "webcrank"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Mark Hibberd";
      maintainer = "Richard Wallace <rwallace@thewallacepack.net>";
      author = "Mark Hibberd <mark@hibberd.id.au>";
      homepage = "https://github.com/webcrank/webcrank";
      url = "";
      synopsis = "Webmachine inspired toolkit for building http applications and services.";
      description = "Webmachine inspired toolkit for building http applications and services.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.http-date)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.network-uri)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.either)
            (hsPkgs.exceptions)
            (hsPkgs.http-date)
            (hsPkgs.http-media)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.unordered-containers)
            (hsPkgs.webcrank)
            ];
          };
        };
      };
    }