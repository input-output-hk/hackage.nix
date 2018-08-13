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
        name = "nanomsg";
        version = "0.1.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Lemmih <lemmih@gmail.com>";
      author = "Lemmih <lemmih@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "nanomsg - scalability protocols library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "nanomsg" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs.nanomsg) ];
      };
    };
  }