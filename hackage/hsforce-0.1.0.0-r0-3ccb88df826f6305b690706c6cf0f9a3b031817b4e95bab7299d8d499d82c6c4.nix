{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hsforce"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Makoto Tajitsu";
      maintainer = "makoto_tajitsu@hotmail.co.jp";
      author = "Makoto Tajitsu";
      homepage = "https://github.com/tzmfreedom/hsforce#readme";
      url = "";
      synopsis = "Salesforce API Client";
      description = "This package provides bindings to Salesforce API <https://github.com/githubuser/hsforce#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.HaXml)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.fast-tagsoup)
          (hsPkgs.http-conduit)
          (hsPkgs.network-uri)
          (hsPkgs.regex-posix)
          (hsPkgs.tagsoup)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.uri-encode)
          ];
        };
      tests = {
        "hsforce-test" = {
          depends = [
            (hsPkgs.HaXml)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fast-tagsoup)
            (hsPkgs.hsforce)
            (hsPkgs.http-conduit)
            (hsPkgs.network-uri)
            (hsPkgs.regex-posix)
            (hsPkgs.tagsoup)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.uri-encode)
            ];
          };
        };
      };
    }