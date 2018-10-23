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
        name = "inspector-wrecker";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 skedge.me";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/skedgeme/inspector-wrecker#readme";
      url = "";
      synopsis = "Create benchmarks from the HAR files";
      description = "inspector-wrecker is a library and executable for creating HTTP benchmarks from\na HAR file dump from Chrome's Inspector.\nThe executable exposes the wrecker options and additionally takes in a path to\na HAR file.\nThe library exposes a single function, 'runHar', which produces a function\n'wrecker''s library can use for benchmarks.";
      buildType = "Simple";
    };
    components = {
      "inspector-wrecker" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wrecker)
          (hsPkgs.optparse-applicative)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.aeson)
          (hsPkgs.http-client-tls)
          (hsPkgs.connection)
          (hsPkgs.data-default)
        ];
      };
      exes = {
        "inspector-wrecker-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.inspector-wrecker)
          ];
        };
      };
      tests = {
        "inspector-wrecker-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.inspector-wrecker)
          ];
        };
      };
    };
  }