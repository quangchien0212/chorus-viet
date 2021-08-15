import React from 'react'

const AdminLayout = ({ children }) => {
  return (
    <div className='bg-gray-100 dark:bg-gray-800 rounded-2xl h-screen overflow-hidden relative'>
      <div className='flex items-start justify-between'>
        <div className='h-full w-80 py-4 ml-4'>
          <div className='sidebar bg-white h-full rounded-lg shadow'>
          </div>
        </div>
        <div className='main-content flex flex-col w-full pl-0 md:p-4 md:space-y-4'>
          {children}
        </div>
      </div>
    </div>
  )
}
export default AdminLayout
