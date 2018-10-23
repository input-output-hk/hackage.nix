{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "http-link-header";
        version = "1.0.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "2014-2016 Greg V <greg@unrelenting.technology>";
      maintainer = "greg@unrelenting.technology";
      author = "Greg V";
      homepage = "https://github.com/myfreeweb/http-link-header";
      url = "";
      synopsis = "A parser and writer for the HTTP Link header as specified in RFC 5988 \"Web Linking\".";
      description = "https://github.com/myfreeweb/http-link-header";
      buildType = "Simple";
    };
    components = {
      "http-link-header" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.errors)
          (hsPkgs.network-uri)
          (hsPkgs.http-api-data)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring-conversion)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.http-link-header)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec-attoparsec)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.http-link-header)
            (hsPkgs.directory)
            (hsPkgs.network-uri)
            (hsPkgs.transformers)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }