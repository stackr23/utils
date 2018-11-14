import chalkExt     from './chalkExt'

const isDebug = () => process.env.NODE_ENV !== 'production' || process.env.DEBUG === 'true'

export default {
    errorMsg:   str => console.log(chalkExt`\n{bgRed {bold [Error]} ${str}}\n`)
,   debugInfo:  str => isDebug() && console.log(chalkExt`\n{bgYellow {bold [DEBUG]} ${str}}\n`)
}
