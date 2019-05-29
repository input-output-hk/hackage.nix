{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hasql-dynamic-statements"; version = "0.2"; };
      license = "MIT";
      copyright = "(c) 2019, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql-dynamic-statements";
      url = "";
      synopsis = "Toolkit for constructing Hasql statements dynamically";
      description = "This library introduces into the Hasql ecosystem a new abstraction named Snippet,\nwhich makes it trivial to construct SQL, while injecting values.\nIt is intended to be used when the SQL of your statement depends on the parameters,\nthat you want to pass in.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hasql)
          (hsPkgs.hasql-implicits)
          (hsPkgs.ptr)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.hasql)
            (hsPkgs.hasql-dynamic-statements)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.rerebase)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }