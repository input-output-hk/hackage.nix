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
      specVersion = "1.2.1";
      identifier = {
        name = "multirec";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "generics@haskell.org";
      author = "Alexey Rodriguez,\nStefan Holdermans,\nAndres Löh,\nJohan Jeuring";
      homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/Multirec";
      url = "";
      synopsis = "Generic programming for families of recursive datatypes";
      description = "Many generic programs require information about the recursive positions\nof a datatype. Examples include the generic fold, generic rewriting or\nthe Zipper data structure. Several generic programming systems allow to\nwrite such functions by viewing datatypes as fixed points of a pattern\nfunctor. Traditionally, this view has been limited to so-called regular\ndatatypes such as lists and binary trees. In particular, families of\nmutually recursive datatypes have been excluded.\n\nWith the multirec library, we provide a mechanism to talk about fixed\npoints of families of datatypes that may be mutually recursive. On top\nof this representations, generic functions such as the fold or the Zipper\ncan then be defined.\n\nWe expect that the library will be especially interesting for compiler\nwriters, because ASTs are typically families of mutually recursive datatypes,\nand with multirec it becomes easy to write generic functions on ASTs.\n\nThe library is based on ideas described in the paper:\n\n*  Alexey Rodriguez, Stefan Holdermans, Andres Löh, Johan Jeuring.\n/Generic programming with fixed points for mutually recursive datatypes/.\nICFP 2009.";
      buildType = "Simple";
    };
    components = {
      "multirec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }