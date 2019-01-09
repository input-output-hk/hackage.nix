{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "skeletons"; version = "0.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "bill@casarin.me";
      author = "William Casarin";
      homepage = "https://github.com/jb55/skeletons";
      url = "";
      synopsis = "Manage project skeletons";
      description = "skeletons manages project skeletons by applying\ntemplates stored in a skeleton closet directory. skeletons\nmay also prompt for each variable in the project templates.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "skeletons" = {
          depends = [
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.tinytemplate)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            ];
          };
        };
      };
    }