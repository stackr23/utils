# @stackr23/logger

## usage

```javascript
import Logger from '../utils/stackr23-logger/'

Logger.success('logger running!')
Logger.error('unexpected bahavior')
Logger.debug('casual debug info')
Logger.log('{reset.magenta custom {bgBlackBright.yellow output style}}')
```

![gitbash-output](gitbash-output.png?raw=true)

### custom style

for custom strings you can use chalks [tagged template literal](https://github.com/chalk/chalk#tagged-template-literal) syntax  

## TBD

* log levels
* options
* input validation
* ...
