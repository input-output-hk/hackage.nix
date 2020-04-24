{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "flamingra"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@lelf.lu";
      author = "Antonio Nikishaev";
      homepage = "";
      url = "";
      synopsis = "FlameGraphs of profiling";
      description = "Hack to turn the profiling output into the format suitable for FlameGraph.\nIt will be (kind of) interactive (e.g. <http://lelf.lu/files/pandoc.svg>).\n\n<<pandoc.svg>>\n\n=TL;DR (and the only one available) guide:\n\n> some-program +RTS -P\n> wget https://raw.githubusercontent.com/brendangregg/FlameGraph/master/flamegraph.pl\n> flamingra some-program.prof | perl flamegraph.pl > picturesque.svg\n\n=Usage:\n\n> flamingra out.prof | …\nor\n\n> … | flamingra | …\n\nwhere out.prof is @-P@ profiling output.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "flamingra" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            ];
          buildable = true;
          };
        };
      };
    }