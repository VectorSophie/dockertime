import logging

class Logger:

    # level : DEBUG > INFO > WARNING > ERROR > CRITICAL
    logging.basicConfig(
        level=logging.INFO,
        format='%(levelname)s: %(asctime)s %(message)s - [%(name)s]',
        datefmt='%H:%M:%S'
    )

    def log(self,name):
        return logging.getLogger(name)



