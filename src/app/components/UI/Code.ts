import { w, W } from 'windstitch'

export const Code = w.code(
  `
    w-[18rem] 
    bg-gray-400 
    h-40
    text-gray-900
    dark:text-white
 `,
  {}
)
export type CodeProps = W.Infer<typeof Code>
