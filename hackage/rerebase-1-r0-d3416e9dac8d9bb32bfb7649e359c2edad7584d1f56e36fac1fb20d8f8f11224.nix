{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rerebase"; version = "1"; };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/rerebase";
      url = "";
      synopsis = "Reexports from \"base\" with a bunch of other standard libraries";
      description = "This package can be used as a drop-in replacement for \\\"base\\\",\nwith all the modules preserving the original APIs and\nbeing located in the original namespaces.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."rebase" or ((hsPkgs.pkgs-errors).buildDepError "rebase"))
          ];
        buildable = true;
        };
      };
    }