{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ekg-log"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "parnell@digitalmentat.com";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/ekg-log";
      url = "";
      synopsis = "Push metrics to a log file.";
      description = "This library lets you push system metrics to a log file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.ekg-core)
          (hsPkgs.text)
          (hsPkgs.fast-logger)
          (hsPkgs.filepath)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          ];
        };
      };
    }