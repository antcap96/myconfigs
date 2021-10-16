from ranger.api.commands import Command

class rcall(Command):
    """recursive call"""

    def execute(self):
        n = len(self.args)

        if n > 2:
            self.fm.run(
                "ls -vb {} | xargs {}".format(
                    " ".join("**/*." + a for a in self.args[1:-1]),
                    self.args[-1]
                ))
        else:
            self.fm.run("ls -vb * | xargs {}", self.args[-1])
