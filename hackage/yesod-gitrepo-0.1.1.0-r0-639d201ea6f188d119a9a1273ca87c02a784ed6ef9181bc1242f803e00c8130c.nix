{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yesod-gitrepo";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/yesod-gitrepo";
      url = "";
      synopsis = "Host content provided by a Git repo";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.temporary)
          (hsPkgs.directory)
          (hsPkgs.yesod-core)
          (hsPkgs.wai)
          (hsPkgs.http-types)
          (hsPkgs.process)
          (hsPkgs.lifted-base)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.enclosed-exceptions)
        ];
      };
    };
  }