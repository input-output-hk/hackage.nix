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
      specVersion = "1.6";
      identifier = {
        name = "group-by-date";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/group-by-date/";
      url = "";
      synopsis = "Shell command for grouping files by dates into folders";
      description = "This program is intended for grouping photography images by date\ninto a hierarchy of date related folders.\n\nIf you have a folder of photographies, say @photos@,\nyou may run\n\n> group-by-date -r photos\n\nThe program will emit a Bash script like this one:\n\n> mkdir -p 2017/2017-06/2017-06-28 && mv photos/0001.jpeg 2017/2017-06/2017-06-28\n> mkdir -p 2017/2017-06/2017-06-28 && mv photos/0002.jpeg 2017/2017-06/2017-06-28\n> mkdir -p 2017/2017-06/2017-06-28 && mv photos/0003.jpeg 2017/2017-06/2017-06-28\n\nYou can inspect the script and if you like it, you can run it:\n\n> group-by-date -r photos | bash\n\nIf you want a different command,\nsay copying with preservation of modification time, you can call\n\n> group-by-date --command='cp -p' -r photos\n\nAlternatively, you can run the actions immediately,\nthat is, without a Bash script:\n\n> group-by-date --mode=move -r photos\n> group-by-date --mode=copy -r photos\n\nYou can also change the target directory structure\nusing the @--format@ option.\nYou can list all options and default values using @--help@.\n\nAttention:\nMedia for photographies is often formatted with FAT.\nThis may yield trouble with respect to timezones.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "group-by-date" = {
          depends  = [
            (hsPkgs.hsshellscript)
            (hsPkgs.filemanip)
            (hsPkgs.pathtype)
            (hsPkgs.time)
            (hsPkgs.unix-compat)
            (hsPkgs.explicit-exception)
            (hsPkgs.transformers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
    };
  }