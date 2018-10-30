{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Cardinality";
        version = "0.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2010 Andrejs Sisojevs";
      maintainer = "Andrejs Sisojevs <andrejs.sisojevs@nextmail.ru>";
      author = "Andrejs Sisojevs <andrejs.sisojevs@nextmail.ru>";
      homepage = "";
      url = "";
      synopsis = "Measure container capacity. Use it to safely change container.";
      description = "This module introduces typeclasses\n\n* @HasCard@ = \\\"Has cardinality\\\". In other words, \\\"it's possible to\nmeasure current count of elements for this container\\\"\n\n* @HasCardT@ = \\\"Has cardinality (for container types of kind\n@(* -> *)@)\\\". In other words, \\\"it's possible to measure\ncurrent count of elements for this container (for container types of\nkind @(* -> *)@)\\\"\n\n* @HasCardConstr@ = \\\"Has cardinality constraint\\\". In other words,\n\\\"there is a capacity constraint for this container\\\".\n\n* @HasCardConstrT@ = \\\"Has cardinality constraint (for container types\nof kind @(* -> *)@)\\\".\nIn other words, \\\"there is a capacity constraint for this container type\nof kind @(* -> *)@\\\".\n\n* @HasCardUCT@ = \\\"Has cardinality-unsafe container transform\\\".\nDefine transform that may thow an error, if contents of @from@ don't\nfit in @to@ .\n\n* @HasCardUCT_T@ = \\\"Has cardinality-unsafe container\ntransform (for container types of kind @(* -> *)@)\\\".\nSame thing as @HasCardUCT@, but for containers of kind @(* -> *)@.\n\nNo, it's not about playing cards. It's about cardinalities.\nWikipedia: \\\"/In mathematics, the cardinality of a set is a measure of\nthe number of elements of the set. For example, the set A = {2, 4, 6}\ncontains 3 elements, and therefore A has a cardinality of 3./\\\"\nIn this package I dare to extend the definition a bit to\n\\\"/C. is a measure of the number of elements in a container/\\\"\n\nUsual containers are (together with their cardinality ranges):\n\n* @Identity a@ (1 element)\n\n* @Maybe a@ (0..1 element)\n\n* @[a]@ (0..inf elements)\n\n* @Map k e@ (0..inf elements)\n\nI extended this to the folowing list:\n\n* @EmptySet a@ (0 elements)\n\n* @Identity a@ (1 element)\n\n* @Maybe a@ (0..1 element)\n\n* @[a]@ (0..inf elements)\n\n* @NeverEmptyList a@ (1..inf elements)\n\n* @Map k e@ (0..inf elements)\n\nTypeclass @HasCardUCT@ together with function @sContTrans@\n(safe container transform) provides a facility to safely change\ncontainer from one to another keepeng the content. If content doesn't\nfit to target container, @Nothing@ is returned. However, when\ntransforming from list @[a]@ to @(Maybe a)@ it won't check list length\nfurther first 2 elements. The complexity and power of this package is\nthat it provides a facility to /lazily/ evaluate amount of content in\nthe container.\n\nTo interface package functions\n\n@import Data.Cardinality@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
    };
  }