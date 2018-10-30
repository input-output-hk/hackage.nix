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
      specVersion = "1.10";
      identifier = {
        name = "twitch";
        version = "0.1.5.1";
      };
      license = "MIT";
      copyright = "(c) Jonathan Fischoff 2014";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/twitch";
      url = "";
      synopsis = "A high level file watcher DSL";
      description = "Twitch is a monadic DSL and library for file watching.\nIt conveniently utilizes 'do' notation in the style of\nShake and clay to expose the functionality of the\nfsnotify cross-platform file system watcher.\n\nHere is an example that converts Markdown files to HTML and reloads Safari\nwhenever the input files change.\n\n@\nimport Twitch\nimport Filesystem.Path.CurrentOS\n\nmain = defaultMain \$ do\n\"*.md\"   |> \\\\filePath -> system \$ \"pandoc -t html \" ++ encodeString filePath\n\"*.html\" |> \\\\_ -> system \$ \"osascript refreshSafari.AppleScript\"\n@\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.system-filepath)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.Glob)
          (hsPkgs.time)
          (hsPkgs.data-default)
          (hsPkgs.fsnotify)
          (hsPkgs.optparse-applicative)
          (hsPkgs.system-fileio)
        ];
      };
    };
  }