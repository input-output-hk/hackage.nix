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
      specVersion = "1.2";
      identifier = {
        name = "jspath";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Extract substructures from JSON by following a path.";
      description = "Use this library to extract substructures from JSON structures by following a\npath.  Path components can select elements by key or index, map over arrays,\nor invoke user-specified functions.  Works with JSONb types.\n\nSuggestions and patches are welcome.";
      buildType = "Simple";
    };
    components = {
      "jspath" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.JSONb)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-trie)
        ];
      };
    };
  }