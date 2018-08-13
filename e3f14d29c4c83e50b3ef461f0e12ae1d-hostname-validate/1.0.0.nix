{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hostname-validate";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Validate hostnames e.g. localhost or foo.co.uk.";
      description = "Validate hostnames e.g. localhost or foo.co.uk. See also RFC 1123, RFC 952, and RFC 1035.";
      buildType = "Simple";
    };
    components = {
      "hostname-validate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
        ];
      };
    };
  }