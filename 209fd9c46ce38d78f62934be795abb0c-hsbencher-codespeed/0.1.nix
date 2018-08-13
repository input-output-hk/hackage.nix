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
      specVersion = "1.18";
      identifier = {
        name = "hsbencher-codespeed";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan Newton";
      homepage = "";
      url = "";
      synopsis = "Backend for uploading benchmark data to CodeSpeed";
      description = "The CodeSpeed project provides a performance dashboard and\nis described at 'https://github.com/tobami/codespeed'.";
      buildType = "Simple";
    };
    components = {
      "hsbencher-codespeed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.http-conduit)
          (hsPkgs.HTTP)
          (hsPkgs.http-types)
          (hsPkgs.resourcet)
          (hsPkgs.json)
          (hsPkgs.network)
          (hsPkgs.data-default)
          (hsPkgs.hsbencher)
        ];
      };
    };
  }