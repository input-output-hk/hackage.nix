{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      no-unicode = false;
      system-libyaml = false;
    };
    package = {
      specVersion = "1.12";
      identifier = {
        name = "libyaml";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>, Anton Ageev <antage@gmail.com>,Kirill Simonov";
      homepage = "https://github.com/snoyberg/yaml#readme";
      url = "";
      synopsis = "Low-level, streaming YAML interface.";
      description = "README and API documentation are available at <https://www.stackage.org/package/libyaml>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
        ];
        libs = pkgs.lib.optional (!(!flags.system-libyaml)) (pkgs."yaml");
      };
    };
  }