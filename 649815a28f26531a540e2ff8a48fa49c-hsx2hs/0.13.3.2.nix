{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      base4 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hsx2hs";
        version = "0.13.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Shaw <stepcut@n-heptane.com>";
      author = "Niklas Broberg, Joel Bjornson";
      homepage = "https://github.com/seereason/hsx2hs";
      url = "";
      synopsis = "HSX (Haskell Source with XML) allows literal XML syntax in Haskell source code.";
      description = "HSX (Haskell Source with XML) allows literal XML syntax in Haskell source code.\nThe trhsx preprocessor translates .hsx source files into ordinary .hs files. Literal\nXML syntax is translated into function calls for creating XML values of the appropriate\nforms.\ntrhsx transforms literal XML syntax into a series of function calls. Any project\ncan make use of the syntax by providing definitions for those functions, and the\nXML values produced will be of the types specified. This works for any types, since\ntrhsx doesn't make any assumptions, or inserts any information depending on types.\nXMLGenerator defines a few typeclasses that together cover the functions injected by the\npreprocessor. A project that uses these classes to provide the semantics for the injected\nsyntax will be able to use any functions written in terms of these, allowing better code\nreusability than if each project defines its own semantics for the XML syntax. Also, the classes\nmakes it possible to use the literal syntax at different types within the same module.\nAchieving that is not as simple as it may seem, but the XMLGenerator module provides all the\nnecessary machinery.";
      buildType = "Simple";
    };
    components = {
      "hsx2hs" = {
        depends  = [
          (hsPkgs.mtl)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
        ] ++ [ (hsPkgs.base) ];
      };
      exes = { "hsx2hs" = {}; };
    };
  }