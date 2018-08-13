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
        name = "praglude";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Tobias Dammers";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "https://github.com/tdammers/praglude";
      url = "";
      synopsis = "A pragmatic Prelude";
      description = "An opinionated alternative Prelude, focused on practicality.";
      buildType = "Simple";
    };
    components = {
      "praglude" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.casing)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.semigroups)
          (hsPkgs.string-convert)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
    };
  }