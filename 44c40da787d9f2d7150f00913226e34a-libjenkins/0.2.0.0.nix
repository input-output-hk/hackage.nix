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
        name = "libjenkins";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matvey.aksenov@gmail.com";
      author = "Matvey Aksenov";
      homepage = "";
      url = "";
      synopsis = "Jenkins API interface";
      description = "Jenkins API interface. It supports REST and Discovery APIs";
      buildType = "Simple";
    };
    components = {
      "libjenkins" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.data-default)
          (hsPkgs.free)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-lens)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }