{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "katip-syslog"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 IRIS Connect Engineering Team";
      maintainer = "chrisd@irisconnect.co.uk";
      author = "Alfredo Di Napoli";
      homepage = "https://github.com/iconnect/katip-syslog#readme";
      url = "";
      synopsis = "Syslog Katip Scribe";
      description = "A simple Katip Scribe which logs to syslog";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.katip)
          (hsPkgs.hsyslog)
          (hsPkgs.text)
          (hsPkgs.string-conv)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          ];
        };
      tests = {
        "katip-syslog-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.katip-syslog) ];
          };
        };
      };
    }