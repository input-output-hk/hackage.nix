{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haskell-lsp-types";
        version = "0.5.0.0";
      };
      license = "MIT";
      copyright = "Alan Zimmerman, 2016-2018";
      maintainer = "alan.zimm@gmail.com";
      author = "Alan Zimmerman";
      homepage = "https://github.com/alanz/haskell-lsp";
      url = "";
      synopsis = "Haskell library for the Microsoft Language Server Protocol, data types";
      description = "An implementation of the types to allow language implementors to\nsupport the Language Server Protocol for their specific language.";
      buildType = "Simple";
    };
    components = {
      "haskell-lsp-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.network-uri)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }