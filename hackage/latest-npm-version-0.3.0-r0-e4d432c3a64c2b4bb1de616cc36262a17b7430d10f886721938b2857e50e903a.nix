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
        name = "latest-npm-version";
        version = "0.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "phartig@rdrei.net";
      author = "Pascal Hartig";
      homepage = "https://github.com/passy/latest-npm-version";
      url = "";
      synopsis = "Find the latest version of a package on npm";
      description = "";
      buildType = "Simple";
    };
    components = {
      "latest-npm-version" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pipes-http)
          (hsPkgs.pipes)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.network)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.aeson)
          (hsPkgs.pipes-attoparsec)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
        ];
      };
      exes = {
        "latest-npm-version" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pipes-http)
            (hsPkgs.pipes)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.network)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.aeson)
            (hsPkgs.pipes-attoparsec)
            (hsPkgs.transformers)
            (hsPkgs.lens)
            (hsPkgs.cmdargs)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
          ];
        };
      };
      tests = {
        "hspec-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.pipes-http)
            (hsPkgs.pipes)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.network)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.aeson)
            (hsPkgs.pipes-attoparsec)
            (hsPkgs.transformers)
            (hsPkgs.lens)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
          ];
        };
      };
    };
  }