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
      specVersion = "1.10";
      identifier = {
        name = "yesod-gitrepo";
        version = "0.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/yesod-gitrepo#readme";
      url = "";
      synopsis = "Host content provided by a Git repo";
      description = "Please see the README and generated docs at <https://www.stackage.org/package/yesod-gitrepo>";
      buildType = "Simple";
    };
    components = {
      "yesod-gitrepo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.http-types)
          (hsPkgs.process)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.unliftio)
          (hsPkgs.wai)
          (hsPkgs.yesod-core)
        ];
      };
    };
  }