{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { tools = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "uri-encode";
        version = "1.5.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "code@silk.co";
      author = "Silk";
      homepage = "";
      url = "";
      synopsis = "Unicode aware uri-encoding.";
      description = "Unicode aware uri-encoding.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "uri-encode" = {
          depends  = pkgs.lib.optionals (flags.tools) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
          ];
        };
        "uri-decode" = {
          depends  = pkgs.lib.optionals (flags.tools) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }