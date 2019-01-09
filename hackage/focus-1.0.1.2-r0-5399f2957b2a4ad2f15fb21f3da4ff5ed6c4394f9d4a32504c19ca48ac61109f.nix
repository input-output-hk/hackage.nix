{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "focus"; version = "1.0.1.2"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/focus";
      url = "";
      synopsis = "A general abstraction for manipulating elements of container data structures";
      description = "An API for construction of free-form strategies of access and manipulation of\nelements of arbitrary data structures.\nIt allows to implement efficient composite patterns, e.g.,\na simultaneous update and lookup of an element,\nand even more complex things.\n\nStrategies are meant to be interpreted by the host data structure libraries.\nThus they allow to implement all access and modification patterns of\na data structure with just a single function,\nwhich interprets strategies.\n\nThis library provides pure and monadic interfaces,\nso it supports both immutable and mutable data structures.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.transformers) ]; };
      };
    }