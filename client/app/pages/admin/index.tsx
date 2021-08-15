import React from "react";
import AdminLayout from "../../components/Layout/AdminLayout";

const AdminHome = () => {
  return (
    <>
      Admin page
    </>
  )
}

AdminHome.getLayout = function getLayout(page: React.ReactNode) {
  return (
    <AdminLayout>
      {page}
    </AdminLayout>
  )
}


export default AdminHome
