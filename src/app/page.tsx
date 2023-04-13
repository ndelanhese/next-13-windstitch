import { Button } from './components/UI/Button'
import { Code } from './components/UI/Code'

const Home = () => {
  return (
    <main>
      <h1 className="text-3xl font-bold">Hello world!</h1>
      <Button color="gray" size="xl">
        text
      </Button>
      <Code color="violet">Text do code</Code>
    </main>
  )
}
export default Home
