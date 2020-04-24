{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-syb = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "curry-frontend"; version = "0.2.12"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Björn Peemöller";
      author = "Wolfgang Lux, Martin Engelke, Bernd Brassel, Holger Siegel";
      homepage = "http://www.curry-language.org";
      url = "";
      synopsis = "Compile the functional logic language Curry to several\nintermediate formats";
      description = "The Curry Frontend consists of the executable program \"cymake\".\nIt is used by various backends to compile Curry programs to\nan internal representation.\nThe code is a stripped-down version of an early version of\nthe Muenster Curry Compiler\n(<http://danae.uni-muenster.de/~lux/curry/>)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "cymake" = {
          depends = [
            (hsPkgs."curry-base" or ((hsPkgs.pkgs-errors).buildDepError "curry-base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            ] ++ (if flags.split-syb
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]);
          buildable = true;
          };
        };
      };
    }