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
        name = "patches-vector";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Liam O'Connor, 2015";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor";
      homepage = "https://github.com/liamoc/patches-vector";
      url = "";
      synopsis = "Patches (diffs) on vectors: composable, mergeable, and invertible.";
      description = "A patch is a collection of modifications (edits) to be made to a sequence of elements. Commonly\nfound in version control systems, patches are also a simple example of a group, supporting composition\nand inversion.\n\nThis library provides a pleasant interface for working with patches to vectors with any type of element.\nIt includes patch composition, inversion, and application, as well as a way to compute a patch between\ntwo vectors using the Wagner-Fischer algorithm.\n\nIt also includes a simple implementation of the Operational Transform (OT) function to resolve\ndiverging patches from the same document. This allows for reasonably painless implementation of merge\nfunctions, as well as many applications in distributed editing of documents.";
      buildType = "Simple";
    };
    components = {
      "patches-vector" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.edit-distance-vector)
          (hsPkgs.vector)
          (hsPkgs.microlens)
        ];
      };
      tests = {
        "test-patches-vector" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.patches-vector)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }