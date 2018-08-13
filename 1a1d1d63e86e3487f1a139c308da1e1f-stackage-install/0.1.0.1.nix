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
        name = "stackage-install";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/stackage-install";
      url = "";
      synopsis = "Secure download of packages for cabal-install";
      description = "For more information, see <https://www.stackage.org/package/stackage-install>";
      buildType = "Simple";
    };
    components = {
      "stackage-install" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.async)
          (hsPkgs.stm)
        ];
      };
      exes = {
        "stackage-install" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stackage-install)
          ];
        };
      };
    };
  }