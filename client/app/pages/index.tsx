import Layout from '../components/Layout'

export default function Index() {
  return (
    <>
      Home page
    </>
  )
}

Index.getLayout = function getLayout(page) {
  return (
    <Layout>
      {page}
    </Layout>
  )
}
